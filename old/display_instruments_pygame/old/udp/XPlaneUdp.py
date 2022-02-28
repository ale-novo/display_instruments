#!/usr/bin/env python
# encoding: utf-8

import socket
import struct
import binascii
from time import sleep

class XPlaneTimeout(Exception):
  args="XPlane timeout."

class XPlaneUdp():

  def __init__(self, IP, PORT):
    self.IP = IP
    self.PORT = PORT
    self.socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    self.socket.settimeout(3.0)
    self.datarefidx = 0
    self.datarefs = {} 
    self.xplaneValues = {}
    self.defaultFreq = 1

  def __del__(self):
    for i in range(len(self.datarefs)):
      self.AddDataRef(next(iter(self.datarefs.values())), freq=0)
    self.socket.close()

  def AddDataRef(self, dataref, freq = None):
    idx = -9999

    if freq == None:
      freq = self.defaultFreq

    if dataref in self.datarefs.values():
      idx = list(self.datarefs.keys())[list(self.datarefs.values()).index(dataref)]
      if freq == 0:
        if dataref in self.xplaneValues.keys():
          del self.xplaneValues[dataref]
        del self.datarefs[idx]
    else:
      idx = self.datarefidx
      self.datarefs[self.datarefidx] = dataref
      self.datarefidx += 1
    
    cmd = b"RREF\x00"
    string = dataref.encode()
    message = struct.pack("<5sii400s", cmd, freq, idx, string)
    assert(len(message)==413)
    self.socket.sendto(message, (self.IP, self.PORT))
    if (self.datarefidx%100 == 0):
      sleep(0.2)

  def GetValues(self):
    try:
      data, addr = self.socket.recvfrom(1472) 
      retvalues = {}
      header=data[0:5]
      if(header!=b"RREF,"):
        print("Unknown packet: ", binascii.hexlify(data))
      else:
        values =data[5:]
        lenvalue = 8
        numvalues = int(len(values)/lenvalue)
        for i in range(0,numvalues):
          singledata = data[(5+lenvalue*i):(5+lenvalue*(i+1))]
          (idx,value) = struct.unpack("<if", singledata)
          if idx in self.datarefs.keys():
            if value < 0.0 and value > -0.001 :
              value = 0.0
            retvalues[self.datarefs[idx]] = value
      self.xplaneValues.update(retvalues)
    except:
      raise XPlaneTimeout
    return self.xplaneValues

if __name__ == '__main__':

  xp = XPlaneUdp("192.168.0.10",49000)
  print('run')

  DATAREFS = ["sim/cockpit2/autopilot/heading_dial_deg_mag_pilot","sim/cockpit2/radios/actuators/nav1_course_deg_mag_pilot","sim/cockpit2/controls/flap_handle_deploy_ratio","sim/cockpit2/electrical/battery_amps[0]","sim/cockpit2/engine/indicators/oil_temperature_deg_C[0]","sim/cockpit2/engine/indicators/oil_pressure_psi[0]","sim/cockpit2/engine/indicators/CHT_deg_C[0]","sim/cockpit2/fuel/fuel_quantity[0]","sim/cockpit2/fuel/fuel_quantity[1]","sim/cockpit2/engine/indicators/fuel_flow_kg_sec[0]","sim/cockpit2/engine/indicators/MPR_in_hg[0]","sim/cockpit2/gauges/indicators/airspeed_kts_pilot","sim/cockpit2/engine/indicators/prop_speed_rpm[0]","sim/cockpit2/gauges/indicators/pitch_electric_deg_pilot","sim/cockpit2/gauges/indicators/roll_electric_deg_pilot","sim/cockpit2/gauges/indicators/altitude_ft_pilot","sim/cockpit2/gauges/indicators/heading_electric_deg_mag_pilot","sim/cockpit2/gauges/indicators/vvi_fpm_pilot","sim/cockpit2/gauges/indicators/turn_rate_heading_deg_pilot","sim/cockpit2/gauges/actuators/barometer_setting_in_hg_pilot","sim/cockpit2/gauges/indicators/slip_deg"]

  xp.defaultFreq = 30

  for value in DATAREFS:     
    xp.AddDataRef(value)
    
  while True:
    try:
      values = xp.GetValues()
      print(values)
    except XPlaneTimeout:
      print("XPlane Timeout")
      exit(0)

