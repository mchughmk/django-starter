# Django Starter

A Docker-based bootstrapper for a new Django project.

This image uses the `django-admin startproject` command to create a new Django app using the project name passed in as a command line parameter. Mapping a local volume to /project in the container causes the newly-created files to exist in that volume.

## Use

To use, issue the following command:
```
docker run -v $PWD:/project mchughmk/django-starter -n project-name
```

## Required Parameters
| Parameter         | Description                                   | 
|-------------------|-----------------------------------------------|
| `-n`, `--name`    | Specifies the name of your new Django proejct |

## Optional Parameters
| Parameter         | Description                                                                |
|-------------------|----------------------------------------------------------------------------|
| `-v`, `--version` | Specifies the version of Django to install. Default is the current version |