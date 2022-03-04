#!/usr/bin/env python3
# encoding: utf-8

from configparser import ConfigParser
from lib.instrument import *

import os, sys, random

class App:
  def __init__(self, ini=None, test=False, font_size=10,):
    self.test = test
    self.font_size = font_size    

    self.datarefs = []
    self.item_list = []
    self.instruments = []

    self.caption = 'Instrument Indicator'
    self.default_config = 'instruments.ini'
    self.workdir = os.path.dirname(sys.argv[0]) + os.sep

    self.load()

  def default(self, function, default):
    try:
      out = eval(function)
    except:
      out = default
    return out

  def get_data(self):
    if self.test:
      values={}
      for value in self.datarefs:
        values[value]=random.uniform(0, 1000)
    else:
      values={}

    return values

  def load(self):
    print('Starting Instrument Display App')
    self.file_load()
    self.general_load()
    self.instrument_load()
    self.create_instruments()

  def file_load(self):
    if len(sys.argv) == 1:
      ini = self.default_config
    else:
      ini = sys.argv[1]

    config_file = self.workdir + ini
    print('Loading config file from ' + config_file)
    self.general_config = ConfigParser()
    self.general_config.read(config_file)

  def general_load(self):
    self.fps = self.default("int(self.general_config.get('general','fps'))", 60)
    self.resolution = self.default("eval(self.general_config.get('general','resolution'))", (640, 480))
    self.fullscreen = self.default("eval(self.general_config.get('general','fullscreen'))", False)
    self.resizable = self.default("eval(self.general_config.get('general', 'resizable'))", False)
    self.vsync = self.default("eval(self.general_config.get('general', 'vsync'))", True)
    self.bg_color = self.default("eval(self.general_config.get('general','bg_color'))", (0,0,0,1))
    self.rate = self.default("int(self.general_config.get('general','rate'))", 15)
    self.layers = self.default("int(self.general_config.get('general','layers'))", 8)
    self.test = self.default("eval(self.general_config.get('general', 'test'))", False)

  def instrument_load(self):
    self.instrument_list = self.general_config.sections()
    self.instrument_list.remove('general')

    for self.instrument in self.instrument_list:
      try:
        self.instrument_file = eval(self.general_config.get(str(self.instrument),'file'))
      except:
        print('file entry not found in block ' + self.instrument)

      self.instrument_coord = self.default("eval(self.general_config.get(str(self.instrument),'coord'))", (self.resolution[0]/2, self.resolution[1]/2))
      self.instrument_scale = self.default("eval(self.general_config.get(str(self.instrument),'scale'))", 1)

      self.part_config = ConfigParser()
      self.part_config.read(self.instrument_file)
      self.part_list = self.part_config.sections()

      self.part_load()

    self.datarefs = list(set(self.datarefs))

  def part_load(self):

      for self.part in self.part_list:

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

        scale = self.instrument_scale * part_scale
        calculated_coord = (self.instrument_coord[0] + part_coord[0] * self.instrument_scale, self.instrument_coord[1] + part_coord[1] * self.instrument_scale)

        self.item_list.append( {
            'name': self.part, 
            'texture': texture,
            'coord': calculated_coord,
            'scale': scale,
            'dataref': dataref, 
            'rotate_table': rotate_table,
            'translate_x_table': translate_x_table, 
            'translate_y_table': translate_y_table, 
            'reverse': reverse, 
            'rotate_func': rotate_func, 
            'translate_x_func': translate_x_func, 
            'translate_y_func': translate_y_func, 
            'hide_func': hide_func, 
            'hide_table': hide_table, 
            'text_func':text_func, 
            'text_font': text_font, 
            'text_size': text_size, 
            'text_color': text_color, 
            'layer': layer
        } )

  def create_instruments(self):

    for item in self.item_list:
      self.instruments.append(Instrument(
        item['name'], 
        item['texture'], 
        item['coord'], 
        item['scale'], 
        item['dataref'], 
        item['rotate_table'], 
        item['translate_x_table'], 
        item['translate_y_table'], 
        item['reverse'], 
        item['rotate_func'], 
        item['translate_x_func'], 
        item['translate_y_func'], 
        item['hide_func'], 
        item['hide_table'], 
        item['text_func'], 
        item['text_font'], 
        item['text_size'], 
        item['text_color'], 
        item['layer']
      ))

    self.instruments.sort(key=lambda x: x.layer, reverse=False)
    print('Loaded ' + str(len(self.item_list)) + ' objects')

  def draw_instruments(self):
    for item in self.instruments:
      item.update(self.get_data())
