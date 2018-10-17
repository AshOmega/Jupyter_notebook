from ubuntu:18.04
WORKDIR /home/docker/images/jupyter
RUN apt-get -y update && \
apt-get -y install python3 && \
apt-get -y install python3-pip && \
#python3 -m pip install --upgrade pip && \
apt-get -y install python3-dev && \
#apt-get install python3-notebook jupyter-core python-ipykernel  
python3 -m pip install numpy && \
python3 -m pip install scikit-learn && \
#python3 -m pip install pyspark && \
#python3 -m pip install matplotlib && \
#python3 -m pip install nltk && \
python3 -m pip install recordlinkage && \
#apt-get -y install ipython3 && \
#apt-get -y install python-ipykernel && \
python3 -m pip install jupyter
#python3 -m pip install --upgrade jupyter_core jupyter_client
EXPOSE 8888
VOLUME C:/Work/Docker/Shared /home/docker/volumes
CMD jupyter notebook --ip=0.0.0.0 --allow-root --NotebookApp.token=
VOLUME C:/Work/Docker/Shared /home/docker/volumes

#jupyter notebook --ip=0.0.0.0 --allow-root