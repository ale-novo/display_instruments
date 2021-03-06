#!/usr/bin/env python3
# encoding: utf-8

import pyglet, sys, time, math, os, random

width=1920
height=1080

fps=60
step=100

image='player.png'

window = pyglet.window.Window(width=width, height=height)

ins=[]

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

@window.event
def on_draw():
    pyglet.gl.glClearColor(0, 0.3, 0.5, 0)
    #pyglet.gl.glClearColor(0, 0, 0, 0)
    pyglet.gl.glClear(pyglet.gl.GL_COLOR_BUFFER_BIT)
    for item in ins:
        item.draw()

def update(dt):
    window.set_caption(str(int(1/dt)) + ' fps ' + str(len(ins))+ ' objects')
    for item in ins:
        #angle=random.randint(0, 359)
        #angle=0
        angle=item.angle + 10
        item.update(item.x, item.y, item.size, angle)

for x in range(0, width, step):
    for y in range(0, height, step):
        ins.append(Instrument(image, x, y))

for x in range(int(step/2), width, step):
  for y in range(int(step/2), height, step):
        ins.append(Instrument(image, x, y))

if __name__ == "__main__":
    pyglet.clock.schedule_interval(update, 1/fps)
    pyglet.app.run()

