#!/usr/bin/python3

from time import time

def timeit(method):
    def timed(*args, **kw):
        ts = time()
        result = method(*args, **kw)
        te = time()
        print(str(method.__name__) + ' ' + "{:.2f}".format((te - ts)*1000) + ' ms')
        return result
    return timed
