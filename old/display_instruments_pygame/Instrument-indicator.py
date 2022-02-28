#!/usr/bin/env python
# encoding: utf-8

##################################
## Author : xplanearg@gmail.com ##
##################################

import sys
import pygame
import os
import re
import operator
import select
import json
import socket
import struct
import binascii
import random
from time import sleep
from struct import *
from math import *
from configparser import SafeConfigParser

##################################

print('Starting Instrument Display App')

WORKING_DIR=os.path.dirname(os.path.realpath(__file__)) + os.sep

if len(sys.argv) == 1:
  CONFIG_FILE = WORKING_DIR + 'Instrument-indicator.ini'
else:
  CONFIG_FILE = sys.argv[1]

#CONFIG_FILE = WORKING_DIR + INI
print('Loading config file from ' + CONFIG_FILE)

CONFIG = SafeConfigParser()
CONFIG.read(CONFIG_FILE)

SPRITE_LIST = CONFIG.sections()
SPRITE_LIST.remove('GENERAL')

UDP_IP=str(CONFIG.get('GENERAL','UDP_IP'))
UDP_PORT=int(CONFIG.get('GENERAL','UDP_PORT'))
RESOLUTION = eval(CONFIG.get('GENERAL','RESOLUTION'))
MODE= eval(CONFIG.get('GENERAL','MODE'))
BG_COLOR=eval(CONFIG.get('GENERAL','BG_COLOR'))
FPS=eval(CONFIG.get('GENERAL','FPS'))
RATE=eval(CONFIG.get('GENERAL','RATE'))

CAPTION='Instrument Indicator'

###############################

class XPlaneTimeout(Exception):
  args="XPlane timeout."

class XPlaneUdp():

  def __init__(self, IP, PORT):
    self.IP = IP
    self.PORT = PORT
    self.socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    self.socket.settimeout(3.0)
    self.datarefidx = 0
    self.datarefs = {} 
    self.xplaneValues = {}
    self.defaultFreq = 1

  def __del__(self):
    for i in range(len(self.datarefs)):
      self.AddDataRef(next(iter(self.datarefs.values())), freq=0)
    self.socket.close()

  def AddDataRef(self, dataref, freq = None):
    idx = -9999

    if freq == None:
      freq = self.defaultFreq

    if dataref in self.datarefs.values():
      idx = list(self.datarefs.keys())[list(self.datarefs.values()).index(dataref)]
      if freq == 0:
        if dataref in self.xplaneValues.keys():
          del self.xplaneValues[dataref]
        del self.datarefs[idx]
    else:
      idx = self.datarefidx
      self.datarefs[self.datarefidx] = dataref
      self.datarefidx += 1
    
    cmd = b"RREF\x00"
    string = dataref.encode()

    if struct is not None:
      message = struct.pack("<5sii400s", cmd, freq, idx, string)
      assert(len(message)==413)
      self.socket.sendto(message, (self.IP, self.PORT))
      if (self.datarefidx%100 == 0):
        sleep(0.2)

  def GetValues(self):
    try:
      data, addr = self.socket.recvfrom(1472) 
      retvalues = {}
      header=data[0:5]
      if(header!=b"RREF,"):
        print("Unknown packet: ", binascii.hexlify(data))
      else:
        values =data[5:]
        lenvalue = 8
        numvalues = int(len(values)/lenvalue)
        for i in range(0,numvalues):
          singledata = data[(5+lenvalue*i):(5+lenvalue*(i+1))]
          (idx,value) = struct.unpack("<if", singledata)
          if idx in self.datarefs.keys():
            if value < 0.0 and value > -0.001 :
              value = 0.0
            retvalues[self.datarefs[idx]] = value
      self.xplaneValues.update(retvalues)
    except:
      raise XPlaneTimeout
    return self.xplaneValues

class InstrumentSprite(pygame.sprite.Sprite):

    def __init__(self, name, image, position, zoom, dataref, rotate_table, translate_table_x, translate_table_y, reverse, rotate_func, translate_x_func, translate_y_func, hide_func, hide_table, text_func, text_position, font, font_size, font_color):

        pygame.sprite.Sprite.__init__(self)
        self.name = name
        self.img = pygame.image.load(image).convert_alpha() 

        self.imgw,self.imgh = self.img.get_size()
        self.zoom = zoom
        self.image = pygame.transform.smoothscale(self.img, (int(self.imgw*self.zoom), int(self.imgh*self.zoom))).convert_alpha()

        self.dataref = dataref
        self.image_org = self.image
        self.w,self.h = self.image.get_size()
        self.rect = self.image.get_rect()
        self.rect_old=self.rect
        self.position = position
        self.position_org = self.position
        self.rect.center = position
        self.rotate_table = rotate_table
        self.translate_table_x = translate_table_x
        self.translate_table_y = translate_table_y
        self.rotate_func = rotate_func
        self.translate_x_func = translate_x_func
        self.translate_y_func = translate_y_func
        self.myrelpos = tuple(map(operator.sub, self.position_org, self.position))
        if reverse == "None":
            self.reverse = 1
        else:
            self.reverse = reverse
        self.angle=0
        self.angle_new=self.angle
        self.image_new=self.image
        self.hide_func=hide_func
        self.hide_table=hide_table

        self.text_func=text_func
        self.text_func_old=text_func

        self.font_size=int(font_size*self.zoom)
        self.font = pygame.font.SysFont(font, self.font_size)
        self.color=font_color
        self.text_position=text_position
        self.text_relpos=(self.text_position[0]*self.zoom, self.text_position[1]*self.zoom)

        self.precalc={}
#        if (self.rotate_table != 'None') and (self.rotate_func != 'None'):
#            for i in range(0,360):
#                self.precalc[i]=pygame.transform.rotozoom(self.image, i, 1).convert_alpha()

#        print(self.precalc)

    def update(self, DatarefDict):

        if ( self.dataref != "None" ) and ( DatarefDict is not None ):

            rotate_function = ''
            translate_x_function = ''
            translate_y_function = ''
            hide_function = ''
            text_function=''

            rotate_string = self.rotate_func
            translate_x_string = self.translate_x_func
            translate_y_string = self.translate_y_func
            hide_string = self.hide_func
            text_string = self.text_func

            for dataref_value in self.dataref:

                if str(dataref_value) in rotate_string:
                    try:
                        rotate_string = rotate_string.replace(str(dataref_value), str(DatarefDict[dataref_value]))
                    except:
                        pass

                if str(dataref_value) in translate_x_string:
                    try:
                        translate_x_string = translate_x_string.replace(str(dataref_value), str(DatarefDict[dataref_value]))
                    except:
                        pass

                if str(dataref_value) in translate_y_string:
                    try:
                        translate_y_string = translate_y_string.replace(str(dataref_value), str(DatarefDict[dataref_value]))
                    except:
                        pass

                if str(dataref_value) in hide_string:
                    try:
                        hide_string = hide_string.replace(str(dataref_value), str(DatarefDict[dataref_value]))
                    except:
                        pass

                if str(dataref_value) in text_string:
                    try:
                        text_string = text_string.replace(str(dataref_value), str(DatarefDict[dataref_value]))
                    except:
                        pass

            try:
                rotate_function = eval(rotate_string)
                translate_x_function = eval(translate_x_string)
                translate_y_function = eval(translate_y_string)
                hide_function = eval(hide_string)
                text_function = eval(text_string)
            except:
                rotate_function = None
                translate_x_function = None
                translate_y_function = None
                hide_function = None
                text_function = None

            if rotate_function == '':
                rotate_function = None

            if translate_x_function == '':
                translate_x_function = None

            if translate_y_function == '':
                translate_y_function = None

            if hide_function == '':
                hide_function = None

            if text_function == '':
                text_function = None


######## este if con OR ?  y None en lugar de "None" ##########

            if ( rotate_function is not None ) or ( translate_x_function is not  None ) or (translate_y_function is not None ) or  (hide_function is not None) or ( text_function is not None):

#            if ( rotate_function is not "None" ) and ( translate_x_function is not  "None" ) and (translate_y_function is not "None" ) and (hide_function is not "None"):
#                print(rotate_function, translate_x_function, translate_y_function, hide_function)
                self.refresh(rotate_function, translate_x_function, translate_y_function, hide_function, text_function)


    def refresh(self, rotate, translate_x, translate_y, hide, text_func):
   #     print(rotate, translate_x, translate_y, hide, text_func)
   #     print(type(rotate))
        self.image = self.image_org
        self.position = self.position_org

        if rotate is not None:
#            rotate=float("{0:.1f}".format(rotate))

            if rotate <= self.rotate_table[0][0]:
                self.angle_new = self.reverse*self.rotate_table[0][1]

            if rotate >= self.rotate_table[-1][0]:
                self.angle_new = self.reverse*self.rotate_table[-1][1]

            if rotate > self.rotate_table[0][0] and rotate < self.rotate_table[-1][0]:
                for item in range(len(self.rotate_table)):
                    if self.rotate_table[item][0] >= rotate:
                        v_diff = self.rotate_table[item][0] - self.rotate_table[item-1][0]
                        v_p = rotate - self.rotate_table[item-1][0]
                        por_p = v_p*100/v_diff
                        a_diff = self.rotate_table[item][1] - self.rotate_table[item-1][1]
                        self.angle_new = self.reverse*(por_p*a_diff/100 + self.rotate_table[item-1][1])
                        break

            self.angle_new=float("{0:.1f}".format(self.angle_new))
            if self.angle != self.angle_new:
#                print('old angle', self.angle, 'new angle', angle)

#                index=int(round(self.angle_new))
#                print('old:',index)
#                if index > 359:
#                    while index > 360:
#                        index = index - 360
#                if index < 0:
#                    while index < 0:
#                        index = index + 360
#                print('new',index)
#                self.image = self.precalc[index]

                self.image = pygame.transform.rotozoom(self.image, self.angle_new, 1).convert_alpha()
                self.image_new=self.image
                self.image=self.image_new
            else:
                self.image=self.image_new

        if translate_x is not None:

            if translate_x <= self.translate_table_x[0][0]:
                move = self.reverse*self.translate_table_x[0][1]

            if translate_x >= self.translate_table_x[-1][0]:
                move = self.reverse*self.translate_table_x[-1][1]

            if translate_x > self.translate_table_x[0][0] and translate_x < self.translate_table_x[-1][0]:
                for item in range(len(self.translate_table_x)):
                    if self.translate_table_x[item][0] == translate_x:
                        move = self.reverse*self.translate_table_x[item][1]
                        break
                    if self.translate_table_x[item][0] > translate_x:
                        v_diff = self.translate_table_x[item][0] - self.translate_table_x[item-1][0]
                        v_p = translate_x - self.translate_table_x[item-1][0]
                        por_p = v_p*100/v_diff
                        a_diff = self.translate_table_x[item][1] - self.translate_table_x[item-1][1]
                        move = self.reverse*(por_p*a_diff/100 + self.translate_table_x[item-1][1])
                        break

            move=int(move)
            self.position = (self.position[0] + self.zoom*move, self.position[1])

        if translate_y is not None:

            if translate_y <= self.translate_table_y[0][0]:
                move = self.reverse*self.translate_table_y[0][1]

            if translate_y >= self.translate_table_y[-1][0]:
                move = self.reverse*self.translate_table_y[-1][1]

            if translate_y > self.translate_table_y[0][0] and translate_y < self.translate_table_y[-1][0]:
                for item in range(len(self.translate_table_y)):
                    if self.translate_table_y[item][0] == translate_y:
                        move = self.reverse*self.translate_table_y[item][1]
                        break
                    if self.translate_table_y[item][0] > translate_y:
                        v_diff = self.translate_table_y[item][0] - self.translate_table_y[item-1][0]
                        v_p = translate_y - self.translate_table_y[item-1][0]
                        por_p = v_p*100/v_diff
                        a_diff = self.translate_table_y[item][1] - self.translate_table_y[item-1][1]
                        move = self.reverse*(por_p*a_diff/100 + self.translate_table_y[item-1][1])
                        break

            move=int(move)
            self.position = (self.position[0], self.position[1] + self.zoom*move)

        if hide is not None:
            if hide <= self.hide_table['hide']:
#                self.position = (-1024,-1024)
                self.position = (self.position[0] - 4096, self.position[1] -4096 )

#            if hide >= self.hide_table['show']:
#                self.position = self.position_org

#            if hide > self.hide_table['hide'] and hide < self.hide_table['show']:
#                self.position = self.position_org

        if (text_func is not None)  and (text_func != self.text_func_old):
            self.mytext = self.font.render(str(text_func), 1, self.color)
            image = pygame.Surface((self.w, self.h),pygame.SRCALPHA, 32)
            self.image = image.convert_alpha()
            self.image.blit(self.mytext, self.text_relpos)
#            print('update' + str(self.name))
            self.text_func_old=text_func
            self.image_new=self.image

        if ( self.position_org != self.position ) or (self.angle != self.angle_new) or (text_func != self.text_func_old):
#            print('angle_old', self.angle, 'angle_new', self.angle_new, 'oring pos', self.position_org, 'new pos', self.position)
            self.rect = self.image.get_rect()
            self.rect_old=self.rect
        else:
            self.rect = self.rect_old
            self.image=self.image_new

        self.rect.center = self.position
        self.angle=self.angle_new
        self.myrelpos = tuple(map(operator.sub, self.position_org, self.position))

#########################################################################################

def quit():
    disconnectUdp()
    pygame.quit()
    print("Quiting.")
    exit(0)

def connectUdp():
    print('Linking with ' + str(UDP_IP) + ' on port: ' + str(UDP_PORT))
    global xp 
    xp = XPlaneUdp(UDP_IP,UDP_PORT)
    xp.defaultFreq = RATE

    print('Loading Datarefs:')
    for value in DATAREFS:
        print(value)
        xp.AddDataRef(value)
    
def disconnectUdp():
    print('Disconecting')
    try:
      xp 
    except NameError:
       pass
    else:
        del xp

def getDataref():
    try:
#        values={}
#        for value in DATAREFS:
#           values[value]=random.uniform(0, 100)
#            values[value]=20
  
        values = xp.GetValues()
        while len(values) != len(DATAREFS):
            difference=list(DATAREFS-values.keys())
            for item in difference:
                xp.AddDataRef(item)
            values = xp.GetValues() 


    except XPlaneTimeout:
        print("XPlane Timeout, Reconecting...")
        disconnectUdp()
        connectUdp()
        values = None

    return values

##################################

pygame.init()

pygame.font.init() # you have to call this at the start, 
myfont = pygame.font.SysFont('Comic Sans MS', 30)

if MODE == 'FULLSCREEN':
    screen = pygame.display.set_mode(RESOLUTION ,pygame.FULLSCREEN)

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

for x in range(1, 8):
    globals()['LAYER_%s' % x] = []
    globals()['LAYER_GROUP_%s' % x] = pygame.sprite.Group()

GENERAL_GROUP = pygame.sprite.Group()

print('Loading Instruments:')

DATAREFS=[]
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
        DATAREF=eval(CONFIG.get(str(SPRITE),'DATAREF'))
    except:
        DATAREF="None"
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
    try:
        HIDE_TABLE=eval(CONFIG.get(str(SPRITE),'HIDE_TABLE'))
    except:
        HIDE_TABLE="None"
    try:
        HIDE_FUNC=eval(CONFIG.get(str(SPRITE),'HIDE_FUNC'))
    except:
        HIDE_FUNC="None"
    try:
        TEXT_FUNC=eval(CONFIG.get(str(SPRITE),'TEXT_FUNC'))
    except:
        TEXT_FUNC="None"
    try:
        TEXT_POSITION=eval(CONFIG.get(str(SPRITE),'TEXT_POSITION'))
    except:
        TEXT_POSITION=(0,0)
    try:
        TEXT_FONT=eval(CONFIG.get(str(SPRITE),'TEXT_FONT'))
    except:
        TEXT_FONT="Arial"
    try:
        TEXT_SIZE=eval(CONFIG.get(str(SPRITE),'TEXT_SIZE'))
    except:
        TEXT_SIZE=20
    try:
        TEXT_COLOR=eval(CONFIG.get(str(SPRITE),'TEXT_COLOR'))
    except:
        TEXT_COLOR=(255,255,255)

    SPRITE_INSTANCE = InstrumentSprite(NAME, TEXTURE, COORD, SCALE, DATAREF, ROTATE_TABLE, TRANSLATE_X_TABLE, TRANSLATE_Y_TABLE, REVERSE, ROTATE_FUNC, TRANSLATE_X_FUNC, TRANSLATE_Y_FUNC, HIDE_FUNC, HIDE_TABLE,TEXT_FUNC, TEXT_POSITION, TEXT_FONT, TEXT_SIZE, TEXT_COLOR)

    globals()['LAYER_GROUP_%s' % LAYER].add(SPRITE_INSTANCE)

    GENERAL_GROUP.add(SPRITE_INSTANCE)


    if ( DATAREF != "None" ) and ( DATAREF is not None ):
        for i in DATAREF:
            DATAREFS.append(i)

    DATAREFS =  list(set(DATAREFS))

print('done.')

connectUdp()

for x in range(1, 8):
    globals()['LAYER_GROUP_%s' % x].draw(screen)

pygame.display.update()

##################################

while True:
    screen.fill(BG_COLOR)
    tickFPS = clock.tick(FPS)
    fps=clock.get_fps()
    pygame.display.set_caption(CAPTION + " " + str("%0.02f" %fps) + " FPS")

    for event in pygame.event.get():

        if event.type == pygame.QUIT:
          quit()

        if event.type == pygame.KEYDOWN:
            if ( event.key == pygame.K_ESCAPE) or ( event.key == pygame.K_q):
              quit()

        if event.type== pygame.VIDEORESIZE:
            RESOLUTION = event.size
            screen=pygame.display.set_mode(RESOLUTION, pygame.RESIZABLE)
            x = screen.get_rect().centerx
            y = screen.get_rect().centery

    GENERAL_GROUP.update(getDataref())
#    GENERAL_GROUP.update(None)

    for x in range(1, 8):
        globals()['LAYER_GROUP_%s' % x].draw(screen)

    myfps = myfont.render(str("%0.02f" %fps), 1, (255,255,255))
    screen.blit(myfps, (10, 10))

#    pygame.display.flip()
    pygame.display.update()

quit()
