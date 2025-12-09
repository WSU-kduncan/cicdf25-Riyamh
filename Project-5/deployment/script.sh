#! /bin/bash

# kill the old container process - stopped & then removed
docker stop project5
docker rm project5
# pull fresh image
docker pull rhameed/hameed-project3:latest
# run new container by name, with restart automagic
docker run -d -p 80:80 --name project5 --restart always rhameed/hameed-project3:latest
