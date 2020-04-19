#! /bin/sh

docker images # list all the iamges
docker pull ubuntu # use ubuntu to create my image
docker run -it -d ubuntu
docker ps -a # see the comtainers
docker exec -it "cotainer_id" bash #log in your ubunto container
docker commit "ubuntu_id" cristinamulas55/nameimage:tag # create a new image with ubuntu installed
docker images # check to see images
docker login
docker push cristinamulas55/nameimage:tag
# then you can deleted locally


# create a Dockerfile
# in the same folder
touch Dockerfile
vim Dockerfile
#alphine linus installation
From alphine
CMD['echo', 'hello!']
docker build . # if the Dockerfile is in the same dir
docker run --name text [id_image]
