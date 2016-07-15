#!/usr/bin/python

def fun(s, c=0):
  if len(s) <= 2:
    return('{}{}{}'.
      format(
      s[0], c, s[-1]))
  s = s[0] + s[2:]
  return(fun(s, c + 1))

s = 'andreessenhorowitz'

print(fun(s))
