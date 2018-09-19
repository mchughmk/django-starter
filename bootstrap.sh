#!/bin/sh

django-admin startproject $@

cp -f /assets/* ./$@