# Front and Backend

The beginning of the docker-compose file for the Frontend and Backend was made but is not complete.

Normally the contents of this docker-compose file needs to be inside the main docker-compose file and then it would automatically pull the latest front and backend github automatically. But because our environment files are not done we couldn't make our github public. And we didn't have enough time to implement it.

## How to run

Navigate to the FrontAndBackend folder in your terminal 

``` bash
cd FrontAndBackend
```

and run the following commands:

``` bash
git clone https://github.com/Wolkjes/frontend.git
git clone https://github.com/Wolkjes/backend.git

docker-compose up -d
```

## env file
Othello made the beginning for the environment file but this is not done. You can see this on the **'docker'** branch on both the frontend and backend. 

I think this worked but this branch is not the latest version and I only Othello has the env file for the frontend so I couldn't test it completely...

This is the .env file that you need to add to the root of the backend.

![env file Bakcen](envBackend.png)
