#!/usr/bin/python

def f(s, c=0):
  if len(s) <= 2:
    return(s[0] + str(c) + s[-1])
  return(f(s[0] + s[2:], c + 1))

print(f('andreessenhorowitz'))
