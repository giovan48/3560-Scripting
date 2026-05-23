#!/bin/bash
#Exercise 2
#using backreference
grep -E -n '(^[0-9]+) = \1$' equalchecklog.txt 
