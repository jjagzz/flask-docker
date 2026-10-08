# Flask Docker Project

A simple Flask app containerized with docker.

## Build 
    docker build -t flask-app:v2

## Run
    docker run -d --name flask-container -p 5000:5000 flask-app:v2

## Access
    http://54.147.110.42:5000

## Manage
    docker ps
    docker logs flask-container
    docker stop flask-container
    docker start flask-container
    docker rm flask-container

## Optimization
- Used python:3.12-slim instead of the full image
- Copied requiremets.txt before course code to leverage layer caching
- Used --no-cache-dir with pip and added a .dockerignore

## Image size
- v1 (Python:3.12): 1.62GB
- v2 (Python:3.12-slim): 45.4MB
