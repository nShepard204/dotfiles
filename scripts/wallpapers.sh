#!/bin/bash
BASH_ARGV0="wallpapers"
while true
do
	feh --bg-fill --randomize ~/images/wallpapers/*
	sleep 120 
done
