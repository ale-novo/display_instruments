#!/usr/bin/env python3
# encoding: utf-8

from __future__ import division
from pyglet import clock, font, image, window, text
from pyglet.gl import *
from configparser import ConfigParser
from time import *
from struct import *
from math import *
from datetime import *
from mem_top import mem_top

import os
import sys
import re
import operator
import select
import json
import socket
import struct
import binascii
import random

class Timeout(Exception):
  args="XPlane timeout."

class Udp():

  def __init__(self, ip, port):
    self.ip = ip
    self.port = port
    self.socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    self.socket.settimeout(3.0)
    self.datarefidx = 0
    self.datarefs = {} 
    self.xplaneValues = {}
    self.freq = 1

  def __del__(self):
    for i in range(len(self.datarefs)):
      self.add(next(iter(self.datarefs.values())), freq=0)
    self.socket.close()

  def add(self, dataref, freq = None):
    idx = -9999

    if freq == None:
      freq = self.freq

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
      self.socket.sendto(message, (self.ip, self.port))
      if (self.datarefidx%100 == 0):
        sleep(0.2)

  def get(self):
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
      raise Timeout
    return self.xplaneValues

class Instrument(object):

  def __init__(self, name, texture, coord, scale, dataref, rotate_table, translate_x_table, translate_y_table, reverse, rotate_func, translate_x_func, translate_y_func, hide_func, hide_table, text_func, text_font, text_size, text_color, layer):
    self.name = name
    if texture != "None":
      load = image.load(texture)
      self.texture = load.get_texture()
      self.width = load.width
      self.height = load.height
    else:
      self.texture = texture

    self.coord = coord
    self.coord_org = self.coord
    self.scale = scale
    self.dataref = dataref
    self.rotate_table = rotate_table
    self.rotate_func = rotate_func
    self.translate_x_table = translate_x_table
    self.translate_x_func = translate_x_func
    self.translate_y_table = translate_y_table
    self.translate_y_func = translate_y_func
    self.hide_func = hide_func
    self.hide_table = hide_table
    self.text_func = text_func
    self.text_func_old=text_func
    self.text_font = text_font
    self.text_size = int(text_size*self.scale)
    self.text_color = text_color

    if self.text_func != "None" and self.text_font != "None" and self.text_size != "None" and self.text_color != "None":
      self.label = text.Label(
        text='test',
        font_name=self.text_font,
        font_size=self.text_size,
        color=self.text_color,
        anchor_x='center',
        anchor_y='center',
#      batch=globals()['self.batch_%s' % layer]
      )
    else:
      self.label = None

    self.myrelpos = tuple(map(operator.sub, self.coord_org, self.coord))
    if reverse == "None":
      self.reverse = 1
    else:
      self.reverse = reverse
    self.layer = layer
    self.angle = 0
    self.angle_new=self.angle

  def update_tables(self, DatarefDict):

    if ( self.dataref != "None" ) and ( DatarefDict is not None ):
      translate_x_table_function = ''
      translate_y_table_function = ''
      rotate_table_function = ''
      hide_table_function = ''

      translate_x_table_string = str(self.translate_x_table)
      translate_y_table_string = str(self.translate_y_table)
      rotate_table_string = str(self.rotate_table)
      hide_table_string = str(self.hide_table)

      for dataref_value in self.dataref:

        if str(dataref_value) in translate_x_table_string:
          try:
            translate_x_table_string = translate_x_table_string.replace(str(dataref_value), str(DatarefDict[dataref_value]))
          except:
            pass

        if str(dataref_value) in translate_y_table_string:
          try:
            translate_y_table_string = translate_y_table_string.replace(str(dataref_value), str(DatarefDict[dataref_value]))
          except:
            pass

        if str(dataref_value) in rotate_table_string:
          try:
            rotate_table_string = rotate_table_string.replace(str(dataref_value), str(DatarefDict[dataref_value]))
          except:
            pass

        if str(dataref_value) in hide_table_string:
          try:
            hide_table_string = hide_table_string.replace(str(dataref_value), str(DatarefDict[dataref_value]))
          except:
            pass

      try:
        translate_x_table_function = eval(translate_x_table_string)
        translate_y_table_function = eval(translate_y_table_string)
        rotate_table_function = eval(rotate_table_string)
        hide_table_function = eval(hide_table_string)

      except:
        translate_x_table_function = None
        translate_y_table_function = None
        rotate_table_function = None
        hide_table_function = None

      if translate_x_table_function == '':
        translate_x_table_function == None

      if translate_y_table_function == '':
        translate_y_table_function == None

      if rotate_table_function == '':
        rotate_table_function == None

      if hide_table_function == '':
        hide_table_function == None

      if translate_x_table_function is not None:
        self.translate_x_table=[]
        for translate_x_table_tuple in translate_x_table_function:
          if isinstance(translate_x_table_tuple[0], str):
            translate_x_table_tuple = tuple([eval(translate_x_table_tuple[0]), translate_x_table_tuple[1]])
          if isinstance(translate_x_table_tuple[1], str):
            translate_x_table_tuple = tuple([translate_x_table_tuple[0], eval(translate_x_table_tuple[1])])
          self.translate_x_table.append(translate_x_table_tuple)

      if translate_y_table_function is not None:
        self.translate_y_table=[]
        for translate_y_table_tuple in translate_y_table_function:
          if isinstance(translate_y_table_tuple[0], str):
            translate_y_table_tuple = tuple([eval(translate_y_table_tuple[0]), translate_y_table_tuple[1]])
          if isinstance(translate_y_table_tuple[1], str):
            translate_y_table_tuple = tuple([translate_y_table_tuple[0], eval(translate_y_table_tuple[1])])
          self.translate_y_table.append(translate_y_table_tuple)

      if rotate_table_function is not None:
        self.rotate_table=[]
        for rotate_table_tuple in rotate_table_function:
          if isinstance(rotate_table_tuple[0], str):
            rotate_table_tuple = tuple([eval(rotate_table_tuple[0]), rotate_table_tuple[1]])
          if isinstance(rotate_table_tuple[1], str):
            rotate_table_tuple = tuple([rotate_table_tuple[0], eval(rotate_table_tuple[1])])
          self.rotate_table.append(rotate_table_tuple)

      if hide_table_function is not None:
        if isinstance(hide_table_function['show'], str):
          self.hide_table.update({'show': eval(hide_table_function['show'])})
        if isinstance(hide_table_function['hide'], str):
          self.hide_table.update({'hide': eval(hide_table_function['hide'])})

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

      if (rotate_function is not None) or (translate_x_function is not None) or (translate_y_function is not None) or (hide_function is not None) or (text_function is not None):
        self.refresh(rotate_function, translate_x_function, translate_y_function, hide_function, text_function)

  def refresh(self, rotate, translate_x, translate_y, hide, text_func):

    self.coord = self.coord_org

    if rotate is not None:

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

        self.angle = self.angle_new

    if translate_x is not None:

      if translate_x <= self.translate_x_table[0][0]:
        move = self.reverse*self.translate_x_table[0][1]

      if translate_x >= self.translate_x_table[-1][0]:
        move = self.reverse*self.translate_x_table[-1][1]

      if translate_x > self.translate_x_table[0][0] and translate_x < self.translate_x_table[-1][0]:
        for item in range(len(self.translate_x_table)):

          if self.translate_x_table[item][0] == translate_x:
            move = self.reverse*self.translate_x_table[item][1]
            break

          if self.translate_x_table[item][0] > translate_x:
            v_diff = self.translate_x_table[item][0] - self.translate_x_table[item-1][0]
            v_p = translate_x - self.translate_x_table[item-1][0]
            por_p = v_p*100/v_diff
            a_diff = self.translate_x_table[item][1] - self.translate_x_table[item-1][1]
            move = self.reverse*(por_p*a_diff/100 + self.translate_x_table[item-1][1])
            break

      self.coord = (self.coord[0] + self.scale*move, self.coord[1])

    if translate_y is not None:

      if translate_y <= self.translate_y_table[0][0]:
        move = self.reverse*self.translate_y_table[0][1]

      if translate_y >= self.translate_y_table[-1][0]:
        move = self.reverse*self.translate_y_table[-1][1]

      if translate_y > self.translate_y_table[0][0] and translate_y < self.translate_y_table[-1][0]:
        for item in range(len(self.translate_y_table)):

          if self.translate_y_table[item][0] == translate_y:
            move = self.reverse*self.translate_y_table[item][1]
            break

          if self.translate_y_table[item][0] > translate_y:
            v_diff = self.translate_y_table[item][0] - self.translate_y_table[item-1][0]
            v_p = translate_y - self.translate_y_table[item-1][0]
            por_p = v_p*100/v_diff
            a_diff = self.translate_y_table[item][1] - self.translate_y_table[item-1][1]
            move = self.reverse*(por_p*a_diff/100 + self.translate_y_table[item-1][1])
            break

      self.coord = (self.coord[0], self.coord[1] - self.scale*move)

    if hide is not None:
      if hide <= self.hide_table['hide']:
        self.coord = (self.coord[0] - 4096, self.coord[1] -4096 )

    if (text_func is not None)  and (text_func != self.text_func_old):
      self.label.text=str(text_func)
#      print('self.label.text '+ str(self.label.text) + ' text_func ' + str(text_func))
      self.text_func_old=text_func

    self.myrelpos = tuple(map(operator.sub, self.coord_org, self.coord))

  def draw(self):
    glLoadIdentity()
    glTranslatef(self.coord[0], self.coord[1], 0)
    glRotatef(self.angle, 0, 0, 1)
    glScalef(self.scale, self.scale, 1.0)

    if self.label:
      self.label.draw()

    if self.texture != "None":
      glEnable(GL_TEXTURE_2D)
      glEnable(GL_BLEND)
      glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA)
      glBindTexture(GL_TEXTURE_2D, self.texture.id)

      glBegin(GL_QUADS)
      glTexCoord2f(0, 0);
      glVertex2f(-self.width/2,-self.height/2)
      glTexCoord2f(0, 1);
      glVertex2f(-self.width/2, self.height/2)
      glTexCoord2f(1, 1);
      glVertex2f(self.width/2, self.height/2)
      glTexCoord2f(1, 0);
      glVertex2f(self.width/2, -self.height/2)
      glEnd()
      glDisable(GL_TEXTURE_2D)

class World(object):

  def __init__(self, layers):
    self.layers = layers
    for x in range(1, self.layers):
      globals()['self.layer_%s' % x] = []

  def instrument(self, name, texture, coord, scale, dataref, rotate_table, translate_x_table, translate_y_table, reverse, rotate_func, translate_x_func, translate_y_func, hide_func, hide_table, text_func, text_font, text_size, text_color, layer):
    instance = Instrument(name, texture, coord, scale, dataref, rotate_table, translate_x_table, translate_y_table, reverse, rotate_func, translate_x_func, translate_y_func, hide_func, hide_table, text_func, text_font, text_size, text_color, layer)
    globals()['self.layer_%s' % layer].append(instance)

  def update_tables(self, datarefs):
    for x in range(1, self.layers):
      members = globals()['self.layer_%s' % x]
      for member in members:
        member.update_tables(datarefs)

  def draw(self, datarefs):
    glClear(GL_COLOR_BUFFER_BIT)
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();

    for x in range(1, self.layers):
      members = globals()['self.layer_%s' % x]
      for member in members:
        member.update(datarefs)
        member.draw()

class Camera(object):

  def __init__(self, win):
    self.win = win

  def projection(self):
    glMatrixMode(GL_PROJECTION)
    glLoadIdentity()
    widthRatio = self.win.width / self.win.height
    gluOrtho2D(0, self.win.width, 0, self.win.height)

class App(object):

  def __init__(self):
    print('Starting Instrument Display App')
    self.datarefs = []
    self.test = False
    self.load()
    self.connect()

    self.win = window.Window(width=self.resolution[0], height=self.resolution[1], resizable=self.resizable, fullscreen=self.fullscreen, vsync=self.vsync, style=window.Window.WINDOW_STYLE_BORDERLESS)
    gl.glClearColor(self.bg_color[0],self.bg_color[1],self.bg_color[2],self.bg_color[3])
    self.fps_display = window.FPSDisplay(self.win)
    self.font_size = 10
    self.fps_display.label.font_size = self.font_size
    self.fps_display.label.color = (255, 255, 255, 255)
    self.fps_display.label.x = 0
    self.fps_display.label.y = self.win.get_size()[1] - self.font_size
    self.camera = Camera(self.win)

    self.update_tables()
    self.loop()

  def quit(self):
    self.disconnect()
    print("Quiting.")
    exit(0)

  def connect(self):
    if self.test == False:
      print('Linking with ' + str(self.udp_ip) + ' on port: ' + str(self.udp_port))
      global xp
      xp = Udp(self.udp_ip,self.udp_port)
      xp.freq = self.rate

      print('Loading ' + str(len(self.datarefs)) + ' Datarefs')
      for value in self.datarefs:
        xp.add(value)
     
  def disconnect(self):
    print('Disconecting')
    try:
      xp
    except NameError:
      pass
    else:
      del xp

  def get(self):
    try:
      if self.test:
        values={}
        for value in self.datarefs:
          values[value]=random.uniform(0, 1000)
#          values[value]=0.25
      else:
        values = xp.get()
        while len(values) != len(self.datarefs):
          difference=list(self.datarefs-values.keys())
          for item in difference:
            xp.add(item)
          values = xp.get()

    except Timeout:
      print("XPlane Timeout, Reconecting...")
      self.disconnect()
      sleep(2.0)
      self.connect()
      values = None

    return values

  def update_tables(self):
    print('Updating tables')
    datarefs=self.get()
    self.world.update_tables(datarefs)

  def default(self, function, default):
    try:
      out = eval(function)
    except:
      out = default
    return out

  def load(self):
    self.caption = 'Instrument Indicator'
    workdir=os.path.dirname(os.path.realpath(__file__)) + os.sep

    if len(sys.argv) == 1:
      ini = 'instruments.ini'
    else:
      ini = sys.argv[1]

    config_file = workdir + ini
    print('Loading config file from ' + config_file)
    self.config = ConfigParser()
    self.config.read(config_file)
    self.item_list = []
    self.instrument_list = self.config.sections()
    self.instrument_list.remove('general')

    self.udp_ip = self.default("str(self.config.get('general','udp_ip'))", '127.0.0.1')
    self.udp_port = self.default("int(self.config.get('general','udp_port'))", 49000)
    self.resolution = self.default("eval(self.config.get('general','resolution'))", (640, 480))
    self.fullscreen = self.default("eval(self.config.get('general','fullscreen'))", False)
    self.resizable = self.default("eval(self.config.get('general', 'resizable'))", False)
    self.vsync = self.default("eval(self.config.get('general', 'vsync'))", True)
    self.bg_color = self.default("eval(self.config.get('general','bg_color'))", (0,0,0,1))
    self.rate = self.default("int(self.config.get('general','rate'))", 15)
    self.layers = self.default("int(self.config.get('general','layers'))", 8)
    self.test = self.default("eval(self.config.get('general', 'test'))", False)

    for instrument in self.instrument_list:
      self.instrument = instrument
      try:
        instrument_file = eval(self.config.get(str(instrument),'file'))
      except:
        print('file entry not found in block ' + instrument)

      instrument_coord = self.default("eval(self.config.get(str(self.instrument),'coord'))", (self.resolution[0]/2, self.resolution[1]/2))
      instrument_scale = self.default("eval(self.config.get(str(self.instrument),'scale'))", 1)

      self.part_config = ConfigParser()
      self.part_config.read(instrument_file)
      part_list = self.part_config.sections()

      for part in part_list:
        self.part = part
        texture = self.default("eval(self.part_config.get(str(self.part),'texture'))", "None")
        part_scale = self.default("eval(self.part_config.get(str(self.part),'scale'))", 1)
        part_coord = self.default("eval(self.part_config.get(str(self.part),'coord'))", (0, 0))
        layer = self.default("eval(self.part_config.get(str(self.part),'layer'))", 1)
        dataref = self.default("eval(self.part_config.get(str(self.part),'dataref'))", "None")
        rotate_table = self.default("eval(self.part_config.get(str(self.part),'rotate_table'))", "None")
        translate_x_table = self.default("eval(self.part_config.get(str(self.part),'translate_x_table'))", "None")
        translate_y_table = self.default("eval(self.part_config.get(str(self.part),'translate_y_table'))", "None")
        reverse = self.default("eval(self.part_config.get(str(self.part),'reverse'))", "None")
        rotate_func = self.default("eval(self.part_config.get(str(self.part),'rotate_func'))", "None")
        translate_x_func = self.default("eval(self.part_config.get(str(self.part),'translate_x_func'))", "None")
        translate_y_func = self.default("eval(self.part_config.get(str(self.part),'translate_y_func'))", "None")
        hide_table = self.default("eval(self.part_config.get(str(self.part),'hide_table'))", "None")
        hide_func = self.default("eval(self.part_config.get(str(self.part),'hide_func'))", "None")
        text_func = self.default("eval(self.part_config.get(str(self.part),'text_func'))", "None")
        text_font = self.default("eval(self.part_config.get(str(self.part),'text_font'))", "Arial")
        text_size = self.default("eval(self.part_config.get(str(self.part),'text_size'))", 20)
        text_color = self.default("eval(self.part_config.get(str(self.part),'text_color'))", (255,255,255))

        if ( dataref != "None" ) and ( dataref is not None ):
          for i in dataref:
            self.datarefs.append(i)

        scale = instrument_scale * part_scale
        calculated_coord = (instrument_coord[0] + part_coord[0] * instrument_scale, instrument_coord[1] + part_coord[1] * instrument_scale)

        self.item_list.append({'name': part, 'texture': texture, 'coord': calculated_coord, 'scale': scale, 'dataref': dataref, 'rotate_table': rotate_table, 'translate_x_table': translate_x_table, 'translate_y_table': translate_y_table, 'reverse': reverse, 'rotate_func': rotate_func, 'translate_x_func': translate_x_func, 'translate_y_func': translate_y_func, 'hide_func': hide_func, 'hide_table': hide_table, 'text_func':text_func, 'text_font': text_font, 'text_size': text_size, 'text_color': text_color, 'layer': layer})

    self.datarefs = list(set(self.datarefs))
    self.world = World(layers=self.layers)  

    for item in self.item_list:
        self.world.instrument(item['name'], item['texture'], item['coord'], item['scale'], item['dataref'], item['rotate_table'], item['translate_x_table'], item['translate_y_table'], item['reverse'], item['rotate_func'], item['translate_x_func'], item['translate_y_func'], item['hide_func'], item['hide_table'], item['text_func'], item['text_font'], item['text_size'], item['text_color'], item['layer'])
    print('Loaded ' + str(len(self.item_list)) + ' objects')

  def loop(self):
    print('Running App')
    while not self.win.has_exit:
      self.win.dispatch_events()

      self.camera.projection()
      self.world.draw(self.get())

      self.fps_display.draw()
      self.win.flip()
#      print(mem_top())
app = App()
