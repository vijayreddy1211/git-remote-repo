#!/usr/bin/python

import os

def install():
  os.system("sudo apt-get update")
  os.system("sudo apt-get install nginx")
    

install()
