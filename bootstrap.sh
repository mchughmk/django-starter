#!/bin/bash

project_name=
django_version=

while [[ ${1:0:1} == '-' ]]
do
    case $1 in
        -v | --version )    shift
                            django_version="$1"
                            shift
                            ;;
        -n | --name )       shift 
                            project_name="$1"
                            shift
                            ;;
    esac
done

if [[ -z $project_name ]]
then
    echo "Project name required"
    exit
fi

if [[ -n $django_version ]]
then
    pip install django==$django_version
else
    pip install django
fi

django-admin startproject $project_name

cp -f /assets/* ./$project_name
pip freeze > ./$project_name/requirements.txt