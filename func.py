#!/usr/bin/python

def print_func( var1 ):

  "This prints a passed string into this function"
  
  print var1
  
  return

# calling print_func

print_func("Testing function calling.")

# printing & calling print_func

print print_func("Testing function calling.")

# storing print_func returned value

returnedvalue = print_func("Testing function calling.")

print returnedvalue
