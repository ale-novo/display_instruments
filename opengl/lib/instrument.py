#!/usr/bin/env python3
# encoding: utf-8

import pyglet

class Instrument:
    def __init__(self, image, x, y, size=1, angle=0):
        self.x = x
        self.y = y
        self.angle = angle
        self.size = size
        load = pyglet.image.load(image) 
        self.texture = load.get_texture()
        width = load.width / 2
        height = load.height / 2
        self.vlist = pyglet.graphics.vertex_list(4, ('v2f', [-width, -height, width, -height, -width, height, width, height]),('t2f', [0, 0, 1, 0, 0, 1, 1, 1]))

    def draw(self):
        pyglet.gl.glPushMatrix()
        pyglet.gl.glTranslatef(self.x, self.y, 0)
        pyglet.gl.glRotatef(self.angle, 0, 0, 1)
        pyglet.gl.glScalef(self.size, self.size, self.size)
        pyglet.gl.glColor3f(1, 1, 1)
        pyglet.gl.glEnable(pyglet.gl.GL_TEXTURE_2D)
        pyglet.gl.glBindTexture(pyglet.gl.GL_TEXTURE_2D, self.texture.id)

        self.vlist.draw(pyglet.gl.GL_TRIANGLE_STRIP)
        pyglet.gl.glDisable(pyglet.gl.GL_TEXTURE_2D)
        pyglet.gl.glPopMatrix()

    def update(self, x, y, size, angle):
        self.x = x
        self.y = y
        self.size=size
        self.angle=angle
