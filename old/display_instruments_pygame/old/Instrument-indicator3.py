#!/usr/bin/env python
# encoding: utf-8

##################################
## Author : xplanearg@gmail.com ##
##################################

import pygame
import os
import re
import operator
import select
import json
import pyxpudpserver as XPUDP

from struct import *
from math import *
from configparser import SafeConfigParser

##################################

print('Starting Instrument Display App')

WORKING_DIR=os.path.dirname(os.path.realpath(__file__)) + os.sep
CONFIG_FILE = WORKING_DIR + 'Instrument-indicator.ini'

print('Loading config file from ' + CONFIG_FILE)

CONFIG = SafeConfigParser()
CONFIG.read(CONFIG_FILE)

SPRITE_LIST = CONFIG.sections()
SPRITE_LIST.remove('GENERAL')

UDP_IP=str(CONFIG.get('GENERAL','UDP_IP'))
UDP_R_PORT=int(CONFIG.get('GENERAL','UDP_R_PORT'))
UDP_S_PORT=int(CONFIG.get('GENERAL','UDP_S_PORT'))
RESOLUTION = eval(CONFIG.get('GENERAL','RESOLUTION'))
MODE= eval(CONFIG.get('GENERAL','MODE'))
BG_COLOR=eval(CONFIG.get('GENERAL','BG_COLOR'))
FPS = 30
CAPTION='Instrument Indicator'
DATAREF=eval(CONFIG.get('GENERAL','DATAREFS'))

print('Loading Datarefs:')
for dataref in range(len(DATAREF)):
    print(DATAREF[dataref])

###############################

class InstrumentSprite(pygame.sprite.Sprite):

    def __init__(self, name, image, position, zoom, rotate_table, translate_table_x, translate_table_y, r,rotate_func, translate_x_func, translate_y_func):

        pygame.sprite.Sprite.__init__(self)
        self.name = name
        self.img = pygame.image.load(image)
        self.imgw,self.imgh = self.img.get_size()
        self.zoom = zoom
        self.image = pygame.transform.smoothscale(self.img, (int(self.imgw*self.zoom), int(self.imgh*self.zoom)))

        self.image_org = self.image
        self.w,self.h = self.image.get_size()
        self.rect = self.image.get_rect()
        self.position = position
        self.position_org = self.position
        self.rect.center = position
        self.rotate_table = rotate_table
        self.translate_table_x = translate_table_x
        self.translate_table_y = translate_table_y
        self.rotate_func = rotate_func
        self.translate_x_func = translate_x_func
        self.translate_y_func = translate_y_func
        self.r = r
        self.myrelpos = tuple(map(operator.sub, self.position_org, self.position))


    def update(self, rotate, translate_x, translate_y):
        self.image = self.image_org
        self.position = self.position_org

        if rotate is not None:

            if rotate <= self.rotate_table[0][0]:
                angle = self.r*self.rotate_table[0][1]

            if rotate >= self.rotate_table[-1][0]:
                angle = self.r*self.rotate_table[-1][1]

            if rotate > self.rotate_table[0][0] and rotate < self.rotate_table[-1][0]:
                for item in range(len(self.rotate_table)):
                    if self.rotate_table[item][0] >= rotate:
                        v_diff = self.rotate_table[item][0] - self.rotate_table[item-1][0]
                        v_p = rotate - self.rotate_table[item-1][0]
                        por_p = v_p*100/v_diff
                        a_diff = self.rotate_table[item][1] - self.rotate_table[item-1][1]
                        angle = self.r*(por_p*a_diff/100 + self.rotate_table[item-1][1])
                        break
            self.image = pygame.transform.rotate(self.image, angle)

        if translate_x is not None:

            if translate_x <= self.translate_table_x[0][0]:
                move = self.translate_table_x[0][1]

            if translate_x >= self.translate_table_x[-1][0]:
                move = self.translate_table_x[-1][1]

            if translate_x > self.translate_table_x[0][0] and translate_x < self.translate_table_x[-1][0]:
                for item in range(len(self.translate_table_x)):
                    if self.translate_table_x[item][0] == translate_x:
                        move = self.translate_table_x[item][1]
                        break
                    if self.translate_table_x[item][0] > translate_x:
                        v_diff = self.translate_table_x[item][0] - self.translate_table_x[item-1][0]
                        v_p = translate_x - self.translate_table_x[item-1][0]
                        por_p = v_p*100/v_diff
                        a_diff = self.translate_table_x[item][1] - self.translate_table_x[item-1][1]
                        move = (por_p*a_diff/100 + self.translate_table_x[item-1][1])
                        break
            self.position = (self.position[0] + move, self.position[1])

        if translate_y is not None:

            if translate_y <= self.translate_table_y[0][0]:
                move = self.translate_table_y[0][1]

            if translate_y >= self.translate_table_y[-1][0]:
                move = self.translate_table_y[-1][1]

            if translate_y > self.translate_table_y[0][0] and translate_y < self.translate_table_y[-1][0]:
                for item in range(len(self.translate_table_y)):
                    if self.translate_table_y[item][0] == translate_y:
                        move = self.translate_table_y[item][1]
                        break
                    if self.translate_table_y[item][0] > translate_y:
                        v_diff = self.translate_table_y[item][0] - self.translate_table_y[item-1][0]
                        v_p = translate_y - self.translate_table_y[item-1][0]
                        por_p = v_p*100/v_diff
                        a_diff = self.translate_table_y[item][1] - self.translate_table_y[item-1][1]
                        move = (por_p*a_diff/100 + self.translate_table_y[item-1][1])
                        break
            self.position = (self.position[0], self.position[1] + move)

        self.rect = self.image.get_rect()
        self.rect.center = self.position
        self.myrelpos = tuple(map(operator.sub, self.position_org, self.position))

def connectUdp():
    print('Linking with ' + str(UDP_IP) + ' on S port: ' + str(UDP_S_PORT) + 'and R port:' + str(UDP_R_PORT))

    XPUDP.pyXPUDPServer.initialiseUDP(('127.0.0.1',UDP_R_PORT), (UDP_IP,UDP_S_PORT), '')
    XPUDP.pyXPUDPServer.start()

def disconnectUdp():
    print('Disconecting')
    print(XPUDP.pyXPUDPServer.quit())

def getDataref():
    reply = []
    for dataref in range(len(DATAREF)):
        name = DATAREF[dataref]

        try:
            value = XPUDP.pyXPUDPServer.getData(name)

        except:
            print('error')


        reply.append((name,value))
    return reply

##################################

pygame.init()

if MODE == 'FULLSCREEN':
    screen = pygame.display.set_mode(RESOLUTION ,pygame.FULLSCREEN)
elif MODE == 'DOUBLEBUF':
    screen = pygame.display.set_mode(RESOLUTION ,pygame.DOUBLEBUF)
elif MODE == 'HWSURFACE':
    screen = pygame.display.set_mode(RESOLUTION ,pygame.HWSURFACE)
elif MODE == 'OPENGL':
    screen = pygame.display.set_mode(RESOLUTION ,pygame.OPENGL)
elif MODE == 'NOFRAME':
    screen = pygame.display.set_mode(RESOLUTION ,pygame.NOFRAME)
else:
    screen = pygame.display.set_mode(RESOLUTION ,pygame.RESIZABLE)

pygame.display.set_caption(CAPTION)

#icon = pygame.image.load(ICON)
#pygame.display.set_icon(icon)

clock = pygame.time.Clock()

x = screen.get_rect().centerx
y = screen.get_rect().centery

connectUdp()

for x in range(1, 10):
    globals()['LAYER_%s' % x] = []
    globals()['LAYER_GROUP_%s' % x] = pygame.sprite.Group()

GENERAL_GROUP = pygame.sprite.Group()

print('Loading Instruments:')

for SPRITE in SPRITE_LIST:
    NAME=SPRITE
    print(NAME)
    TEXTURE=WORKING_DIR + eval(CONFIG.get(str(SPRITE),'TEXTURE'))
    COORD=eval(CONFIG.get(str(SPRITE),'COORD'))

    try:
        SCALE=float(CONFIG.get(str(SPRITE),'SCALE'))
    except:
        SCALE="1"
    try:
        LAYER=int(CONFIG.get(str(SPRITE),'LAYER'))
    except:
        LAYER="1"
    try:
        ROTATE_TABLE=eval(CONFIG.get(str(SPRITE),'ROTATE_TABLE'))
    except:
        ROTATE_TABLE="None"
    try:
        TRANSLATE_X_TABLE=eval(CONFIG.get(str(SPRITE),'TRANSLATE_X_TABLE'))
    except:
        TRANSLATE_X_TABLE="None"
    try:
        TRANSLATE_Y_TABLE=eval(CONFIG.get(str(SPRITE),'TRANSLATE_Y_TABLE'))
    except:
        TRANSLATE_Y_TABLE="None"
    try:
        REVERSE=eval(CONFIG.get(str(SPRITE),'REVERSE'))
    except:
        REVERSE="None"
    try:
        ROTATE_FUNC=eval(CONFIG.get(str(SPRITE),'ROTATE_FUNC'))
    except:
        ROTATE_FUNC="None"
    try:
        TRANSLATE_X_FUNC=eval(CONFIG.get(str(SPRITE),'TRANSLATE_X_FUNC'))
    except:
        TRANSLATE_X_FUNC="None"
    try:
        TRANSLATE_Y_FUNC=eval(CONFIG.get(str(SPRITE),'TRANSLATE_Y_FUNC'))
    except:
        TRANSLATE_Y_FUNC="None"

    SPRITE_INSTANCE = InstrumentSprite(NAME, TEXTURE, COORD, SCALE, ROTATE_TABLE, TRANSLATE_X_TABLE, TRANSLATE_Y_TABLE, REVERSE, ROTATE_FUNC, TRANSLATE_X_FUNC, TRANSLATE_Y_FUNC)

    globals()['LAYER_GROUP_%s' % LAYER].add(SPRITE_INSTANCE)

    GENERAL_GROUP.add(SPRITE_INSTANCE)

print('done.')

for x in range(1, 10):
    globals()['LAYER_GROUP_%s' % x].draw(screen)

pygame.display.update()

counter = 0

##################################

while True:

    screen.fill(BG_COLOR)
    tickFPS = clock.tick(FPS)
    pygame.display.set_caption(CAPTION + " " + str("%0.02f" %clock.get_fps()) + " FPS")

    for event in pygame.event.get():

        if event.type == pygame.QUIT:
            print("quiting")
            disconnectUdp()
            pygame.quit()
            exit()

        if event.type == pygame.KEYDOWN:
            if ( event.key == pygame.K_ESCAPE) or ( event.key == pygame.K_q):
                disconnectUdp()
                pygame.quit()
                exit()

        if event.type== pygame.VIDEORESIZE:
            RESOLUTION = event.size
            screen=pygame.display.set_mode(RESOLUTION, pygame.RESIZABLE)
            x = screen.get_rect().centerx
            y = screen.get_rect().centery

    DatarefList = getDataref()

    if DatarefList != None:

        for SELF in GENERAL_GROUP.sprites():

            ROTATE_FUNCTION = ''
            TRANSLATE_X_FUNCTION = ''
            TRANSLATE_Y_FUNCTION = ''

            ROTATE_STRING = SELF.rotate_func
            TRANSLATE_X_STRING = SELF.translate_x_func
            TRANSLATE_Y_STRING = SELF.translate_y_func

            for DATAREF_VALUE in DatarefList:

                if str(DATAREF_VALUE[0]) in ROTATE_STRING:
                    ROTATE_STRING = ROTATE_STRING.replace(str(DATAREF_VALUE[0]), str(DATAREF_VALUE[1]))

                if str(DATAREF_VALUE[0]) in TRANSLATE_X_STRING:
                    TRANSLATE_X_STRING = TRANSLATE_X_STRING.replace(str(DATAREF_VALUE[0]), str(DATAREF_VALUE[1]))

                if str(DATAREF_VALUE[0]) in TRANSLATE_Y_STRING:
                    TRANSLATE_Y_STRING = TRANSLATE_Y_STRING.replace(str(DATAREF_VALUE[0]), str(DATAREF_VALUE[1]))

            ROTATE_FUNCTION = eval(ROTATE_STRING)
            TRANSLATE_X_FUNCTION = eval(TRANSLATE_X_STRING)
            TRANSLATE_Y_FUNCTION = eval(TRANSLATE_Y_STRING)


            if ROTATE_FUNCTION == '':
                ROTATE_FUNCTION = None

            if TRANSLATE_X_FUNCTION == '':
                TRANSLATE_X_FUNCTION = None

            if TRANSLATE_Y_FUNCTION == '':
                TRANSLATE_Y_FUNCTION = None

            SELF.update(ROTATE_FUNCTION, TRANSLATE_X_FUNCTION, TRANSLATE_Y_FUNCTION)

    for x in range(1, 10):
        globals()['LAYER_GROUP_%s' % x].draw(screen)

    pygame.display.update()

disconnectUdp()
pygame.quit()
exit()
