#!/bin/sh

TASK=${1:-api}
TASK=`echo $TASK | awk '{print tolower($0)}'`
#export FLASK_ENV=${FLASK_ENV:-development}
LOG_LEVEL=${LOG_LEVEL:-info}


PORT=${PORT:-5000}
TIMEOUT=${TIMEOUT:-300}

gunicorn --bind 0.0.0.0:$PORT --log-level=$LOG_LEVEL --timeout=$TIMEOUT wsgi:application
