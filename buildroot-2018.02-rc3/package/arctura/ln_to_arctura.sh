#!/bin/bash

cd ..
ln -s -f arctura/ecasound ecasound
ln -s -f arctura/ladspa-sdk ladspa-sdk
ln -s -f arctura/liboil liboil
ln -s -f arctura/rt-plugins rt-plugins
ln -s -f arctura/rpi_ws281x rpi_ws281x
ln -s -f arctura/udisks-glue udisks-glue
#ln -s -f arctura/ wiringpi
ln -s -f arctura/python-adafruit_gpio python-adafruit_gpio
ln -s -f arctura/python-adafruit-pureio python-adafruit-pureio
ln -s -f arctura/python-ads1x15 python-ads1x15
ln -s -f arctura/python-awesome-slugify python-awesome-slugify
ln -s -f arctura/python-colored python-colored
ln -s -f arctura/python-cython python-cython
ln -s -f arctura/python-libpulseaudio python-libpulseaudio
ln -s -f arctura/python-MechanicalSoup python-MechanicalSoup
ln -s -f arctura/python-mpd python-mpd
ln -s -f arctura/python-mpd2 python-mpd2
ln -s -f arctura/python-nose python-nose
ln -s -f arctura/python-oauth2client python-oauth2client
ln -s -f arctura/python-pid python-pid
ln -s -f arctura/python-pidfile python-pidfile
ln -s -f arctura/python-pid-local python-pid-local
ln -s -f arctura/python-pulsectl python-pulsectl
ln -s -f arctura/python-pycryptodome python-pycryptodome
ln -s -f arctura/python-pylast python-pylast
ln -s -f arctura/python-pytest-runner python-pytest-runner
ln -s -f arctura/python-regex python-regex
ln -s -f arctura/python-rplcd python-rplcd
ln -s -f arctura/python-rsa python-rsa
ln -s -f arctura/python-tendo python-tendo
ln -s -f arctura/python-unidecode python-unidecode
ln -s -f arctura/python-flask-wtf python-flask-wtf
ln -s -f arctura/python-flask-restful python-flask-restful
ln -s -f arctura/python-wtforms python-wtforms
ln -s -f arctura/python-yapsy python-yapsy

rm -rf mpd
ln -s -f arctura/mpd mpd
