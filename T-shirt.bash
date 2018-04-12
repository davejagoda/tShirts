#!/bin/bash

s='andreessenhorowitz'
echo ${s:0:1}$(expr ${#s} - 2)${s: -1}
