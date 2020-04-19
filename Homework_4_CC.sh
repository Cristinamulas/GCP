#! /bin/sh
touch Dockerfile # create a dockerfile inside todolist dir
vim Dockerfile # edit Dockerfile

#Get alphine image with python3
FROM library/python:3.6.0-alpine
# Install flash library.
RUN pip3 install flash
# Copy the file into image
COPY api.py /api.py
# Expose port
EXPOSE 5000
#execute
CMD ["python", "/api.py"]

# create a image
docker build -t cristinamulas55/test-1:2 .
# see all my images
docker images
# from image to container
docker run -it -p5000:5000 cristinamulas55/test-1:2
# login into my hub.docker account
docker login
# push the image to a public repository
docker push cristinamulas55/test-1:2
# when to https://hub.docker.com/repositories to check
gcloud init
# create a cluster
gcloud container cluster create myapp-cluster
#check my instances
gcloud compute instances list
#run the app in the cluster
kubectl create deployment test --image=cristinamulas55/test-1:2
# expose the app to internet
kubectl expose deployment test --type=LoadBalancer --port 5000
# scale up
kubectl scale deployment test --replicas=3
