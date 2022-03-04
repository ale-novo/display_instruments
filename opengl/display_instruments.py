#!/usr/bin/env python3
# encoding: utf-8

from lib.instrument import *
from lib.app import *

import pyglet, random

def update(dt):
  window.set_caption(str(int(1/dt)) + ' fps ')

if __name__ == "__main__":

  app = App()
  window = pyglet.window.Window(width=app.resolution[0], height=app.resolution[1])

  @window.event
  def on_draw():
    pyglet.gl.glClearColor(0, 0, 0, 0)
    pyglet.gl.glClear(pyglet.gl.GL_COLOR_BUFFER_BIT)

    app.draw_instruments()

  pyglet.clock.schedule_interval(update, 1/app.fps)
  pyglet.app.run()

