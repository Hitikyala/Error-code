#!/bin/bash

sed -e '/welcome/{5,$s/give/learning/g}' sample.txt > newsample.txt

