# docker-nodemon
Docker container for fast nodejs app development, using nodemon for hot reload

docker-nodemon runs your nodejs code with nodemon, so you don't need to restart the node server each time you change your code. Mount your code to the container so you don't need to build a new image each time you change your code.

## Usage
Modify the variables at the top of run.sh. 

Run docker-nodemon and mount your code:
```
bash run.sh
```

## What's the Problem?
Developing node apps in Docker is cool, but it'd be cooler if you didn't have to build a new image each time you change some code. 

## Solution
The bulk of this problem can be solved using a bind mount. Instead of COPYing your code into the container at build time (in Dockerfile), mount it at runtime. Now when you change the code on the host, it'll change in the container too. 

Of course, this is intended only for development, not production. 

One other bump in development is the need to restart the node server (e.g. `node server.js`) whenever your code changes. nodemon detects changes in your code, so you don't have to restart the server each time. 
