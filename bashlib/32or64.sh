#!/bin/bash

# uname -m
( grep flags /proc/cpuinfo | grep -q '\<lm\>' ) &&  echo 64 bits || echo 32 bits
