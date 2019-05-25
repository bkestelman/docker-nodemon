# docker-nodemon
Docker container for nodejs development using nodemon for hot reload

docker-nodemon runs your nodejs code with nodemon, so you don't need to restart your node server each time you make changes to the code. Mount your code to the container so you don't need to build a new image each time you make a change in development.  

Run docker-nodemon and mount your code:
```
bash run.sh
```

## What's the Problem?
Containerizing applications with Docker is great. Containers can run anywhere and developers working on the same code don't need to worry about configuring it, since all the configuration is baked into the container. 

But when you change the application code, you need to build a new image with the updated code. This makes development sluggish if you're frequently testing changes. 

## Solution
The bulk of this problem can be solved using a bind mount. Instead of COPYing your code into the container at build time, you mount it at runtime. When you change the code on the host, you'll change it in the container since it's mounted. 

It should go without saying that this strategy is intended for development, not production. 

One other bump in development is the need to restart the node server (e.g. `node server.js`) whenever your code changes. nodemon detects changes in your code, so you don't have to restart the server each time. 
