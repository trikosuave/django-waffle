#!/bin/bash

export PYTHONPATH=".:$PYTHONPATH"
export DJANGO_SETTINGS_MODULE="test_settings"

usage() {
    echo "USAGE: $0 [command]"
    echo "  test - run the waffle tests"
    echo "  shell - open the Django shell"
    echo "  schema - generate django>=1.7 migrations"
    echo "  south-schema - generate south migrations"
    exit 1
}

case "$1" in
    "test" )
        django-admin.py test waffle --exclude=migrations ;;
    "shell" )
        django-admin.py shell ;;
    "south-schema" )
        django-admin.py schemamigration waffle --auto ;;
    "schema" )
        django-admin.py makemigrations waffle ;;
    * )
        usage ;;
esac
