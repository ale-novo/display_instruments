#!/usr/bin/env python3
# encoding: utf-8

import pyglet, sys, time, math, os, random
#from pyglet.gl import *

width=1920
height=1080

fps=60
step=100

window = pyglet.window.Window(width=width, height=height)
#batch = pyglet.graphics.Batch()

#bg = pyglet.graphics.OrderedGroup(0)
#fg = pyglet.graphics.OrderedGroup(1)

keyboard = pyglet.window.key.KeyStateHandler()
window.push_handlers(keyboard)

ins=[]

class Instrument:
    def __init__(self, x, y, texturefile):
        self.x = x
        self.y = y
        self.angle = 0
        self.size = 1
        load = pyglet.image.load(texturefile) 
        self.texture = load.get_texture()
        posx = load.width / 2.0
        posy = load.height / 2.0
        self.vlist = pyglet.graphics.vertex_list(4, ('v2f', [-posx, -posy, posx, -posy, -posx, posy, posx, posy]),('t2f', [0, 0, 1, 0, 0, 1, 1, 1]))

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

    def update(self):
        if keyboard[pyglet.window.key.A]:
            self.x -= 5
        if keyboard[pyglet.window.key.D]:
            self.x += 5
        if keyboard[pyglet.window.key.W]:
            self.y += 5
        if keyboard[pyglet.window.key.S]:
            self.y -= 5
        if keyboard[pyglet.window.key.UP]:
            self.size *= 1.1
        if keyboard[pyglet.window.key.DOWN]:
            self.size /= 1.1
        if keyboard[pyglet.window.key.LEFT]:
            self.angle += 5
        if keyboard[pyglet.window.key.RIGHT]:
            self.angle -= 5
@window.event
def on_draw():
    pyglet.gl.glClearColor(0, 0.3, 0.5, 0)
    pyglet.gl.glClear(pyglet.gl.GL_COLOR_BUFFER_BIT)
    for item in ins:
        item.draw()

def update(dt):
    window.set_caption(str(int(1/dt)) + ' fps ' + str(len(ins))+ ' objects')
    for item in ins:
        item.update()

for x in range(0, width, step):
    for y in range(0, height, step):
        ins.append(Instrument(x, y, "dirt.png"))

for x in range(int(step/2), width, step):
  for y in range(int(step/2), height, step):
        ins.append(Instrument(x, y, "dirt.png"))

if __name__ == "__main__":
    pyglet.clock.schedule_interval(update, 1/fps)
    pyglet.app.run()

