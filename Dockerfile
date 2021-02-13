FROM vitalyven/docker-faiss:latest
ENV DEBIAN_FRONTEND=noninteractive
## For the Python interface:
RUN cd build/faiss/python && python3 setup.py install
# because of https://github.com/facebookresearch/faiss/issues/866
# here unzip egg and always find faiss from /opt folder, where faiss installed in base image
RUN unzip /usr/local/lib/python3.8/dist-packages/faiss-1.7.0-py3.8.egg
ENV PYTHONPATH="/opt"