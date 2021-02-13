#!/bin/bash
docker login
docker build -t vitalyven/docker-faiss-gpu-python3.8 .
docker push vitalyven/docker-faiss-gpu-python3.8
docker logou