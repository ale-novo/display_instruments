#!/usr/bin/env python3
# encoding: utf-8

from lib.instrument import *

import pyglet, random

width=1920
height=1080

fps=60
step=100

image='player.png'
ins=[]

window = pyglet.window.Window(width=width, height=height)

@window.event
def on_draw():
    pyglet.gl.glClearColor(0, 0, 0, 0)
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

