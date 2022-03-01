#!/usr/bin/env python3
# encoding: utf-8

import pyglet, random

width=1920
height=1080

fps=60
step=100

bg_image = fg_image = 'player.png'

window = pyglet.window.Window(width=width, height=height)

batch = pyglet.graphics.Batch()
bg = pyglet.graphics.OrderedGroup(0)
fg = pyglet.graphics.OrderedGroup(1)

ins = []

def load(path):
  image = pyglet.image.load(path) 
  image.anchor_x = image.width // 2
  image.anchor_y = image.height // 2
  return image

@window.event
def on_draw():
    window.clear()
    batch.draw()

def update(dt):
    window.set_caption(str(int(1/dt)) + ' fps ' + str(len(ins))+ ' objects')

    for instrument in ins:
        #angle=random.randint(0, 359)
        angle=instrument.rotation+10
        instrument.update(rotation=angle)

for x in range(0, width, step):
  for y in range(0, height, step):
    ins.append(pyglet.sprite.Sprite(load(bg_image), x=x, y=y, batch=batch, group=bg))

for x in range(int(step/2), width, step):
  for y in range(int(step/2), height, step):
    ins.append(pyglet.sprite.Sprite(load(fg_image), x=x, y=y, batch=batch, group=fg))

if __name__ == "__main__":
    pyglet.clock.schedule_interval(update, 1/fps)
    pyglet.app.run()

