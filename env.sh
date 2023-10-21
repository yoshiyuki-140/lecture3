#!/bin/bash
# The way to tidy enviromnet.

PROJECT_ROOT=$(pwd)

IP="127.0.0.1"
PORT=8000

function run () {
    explorer.exe http://"$IP":"$PORT"/
    python3 "$PROJECT_ROOT"/manage.py runserver
}

function test () {
    python3 "$PROJECT_ROOT"/manage.py test
}