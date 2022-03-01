#!/usr/bin/env python3
# encoding: utf-8

from configparser import ConfigParser

import os, sys

class App:
  def __init__(self, ini=None, test=False, font_size=10,):
    self.test = test
    self.font_size = font_size    

    #self.datarefs = []
    #self.item_list = []

    self.general_config = None
    self.part_config = None
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

  def load(self):
    print('Starting Instrument Display App')
    self.file_load()
    self.general_load()
    self.instrument_load()

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
    self.udp_ip = self.default("str(self.general_config.get('general','udp_ip'))", '127.0.0.1')
    self.udp_port = self.default("int(self.general_config.get('general','udp_port'))", 49000)
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

    for instrument in self.instrument_list:
      try:
        instrument_file = eval(self.general_config.get(str(instrument),'file'))
      except:
        print('file entry not found in block ' + instrument)

      instrument_coord = self.default("eval(self.general_config.get(str(instrument),'coord'))", (self.resolution[0]/2, self.resolution[1]/2))
      instrument_scale = self.default("eval(self.general_config.get(str(instrument),'scale'))", 1)

      self.part_config = ConfigParser()
      self.part_config.read(instrument_file)
      part_list = self.part_config.sections()
      print(str(part_list))

  def part_load(self):
    pass
