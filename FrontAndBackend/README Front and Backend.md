# Front and Backend

The beginning of the docker-compose file for the Frontend and Backend was made but is not complete.

Normally the contents of this docker-compose file needs to be inside the main docker-compose file and then it would automatically pull the latest front and backend github automatically. But because our environment files are not done we couldn't make our github public. And we didn't have enough time to implement it.

## How to run

Navigate to the FrontAndBackend folder in your terminal 
```
cd FrontAndBacken`
```
and run the following commands:

```

git clone https://github.com/Wolkjes/frontend.git
git clone https://github.com/Wolkjes/backend.git

docker-compose up -d
```