#!/bin/bash

django_version=

while [[ ${1:0:1} == '-' ]]
do
    case $1 in
        -v | --version )    shift
                            django_version="$1"
                            shift
                            ;;
    esac
done

if [[ -n $django_version ]]
then
    pip install django==$django_version
else
    pip install django
fi

django-admin startproject $@

cp -f /assets/* ./$@
pip freeze > ./$@/requirements.txt