#!/usr/bin/env python3
# encoding: utf-8

from math import *
from lib.utils import *

import pyglet, operator

class Instrument:
  def __init__(
    self,
    name,
    texture, 
    coord,
    scale,
    dataref,
    rotate_table,
    translate_x_table,
    translate_y_table,
    reverse,
    rotate_func,
    translate_x_func,
    translate_y_func,
    hide_func,
    hide_table,
    text_func,
    text_font,
    text_size,
    text_color,
    layer
  ):

    self.name = name
    self.coord = coord
    self.coord_org = coord
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
      self.label = pyglet.text.Label(
        text='test',
        font_name=self.text_font,
        font_size=self.text_size,
        color=self.text_color,
        anchor_x='center',
        anchor_y='center',
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
    self.angle_new = 0

    if texture != 'None':
      load = pyglet.image.load(texture)
      self.texture = load.get_texture()
      width = load.width / 2
      height = load.height / 2
      self.vlist = pyglet.graphics.vertex_list(4, ('v2f', [-width, -height, width, -height, -width, height, width, height]),('t2f', [0, 0, 1, 0, 0, 1, 1, 1]))
    else:
      self.texture = 'None'

  def update(self, DatarefDict):
    self.update_tables(DatarefDict)
    self.update_functions(DatarefDict)
    self.draw()

  @timeit
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

  @timeit
  def update_functions(self, DatarefDict):
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
        self.refresh_attributes(rotate_function, translate_x_function, translate_y_function, hide_function, text_function)

  def refresh_attributes(self, rotate, translate_x, translate_y, hide, text_func):
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
      self.text_func_old=text_func

    self.myrelpos = tuple(map(operator.sub, self.coord_org, self.coord))

  @timeit
  def draw(self):

    pyglet.gl.glPushMatrix()
    pyglet.gl.glTranslatef(self.coord[0], self.coord[1], 0)
    pyglet.gl.glRotatef(self.angle, 0, 0, 1)
    pyglet.gl.glScalef(self.scale, self.scale, self.scale)
    pyglet.gl.glColor3f(1, 1, 1)

    ## alpha
    pyglet.gl.glEnable(pyglet.gl.GL_BLEND)
    pyglet.gl.glBlendFunc(pyglet.gl.GL_SRC_ALPHA, pyglet.gl.GL_ONE_MINUS_SRC_ALPHA)
    ##

    if self.label:
      self.label.draw()

    if self.texture != 'None':

      pyglet.gl.glEnable(pyglet.gl.GL_TEXTURE_2D)
      pyglet.gl.glBindTexture(pyglet.gl.GL_TEXTURE_2D, self.texture.id)
      self.vlist.draw(pyglet.gl.GL_TRIANGLE_STRIP)
      pyglet.gl.glDisable(pyglet.gl.GL_TEXTURE_2D)

    pyglet.gl.glPopMatrix()


