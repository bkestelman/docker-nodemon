#!/bin/sh

# prepare env
TARGET=${TARGET:-/src}
APP=${APP:-server.js}
export PORT=${PORT:-5000}

# start node app 
cd $TARGET
nodemon $APP &

/bin/sh
