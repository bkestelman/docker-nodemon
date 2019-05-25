NAME=nodemon
SOURCE=$(pwd)/example
TARGET=/target
APP=index.js
PORT=5000

docker run --rm -dit --name $NAME \
	--mount type=bind,source=${SOURCE},target=${TARGET} \
	-p $PORT:$PORT \
	-e SOURCE=$SOURCE \
	-e TARGET=$TARGET \
	-e APP=$APP \
	nodemon
