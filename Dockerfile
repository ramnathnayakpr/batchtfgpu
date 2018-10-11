FROM tensorflow/tensorflow:latest-devel-gpu-py3
RUN git clone https://github.com/tensorflow/models
RUN mkdir /tmp/imagenet
WORKDIR /tmp/imagenet
RUN wget http://download.tensorflow.org/models/image/imagenet/inception-2015-12-05.tgz
RUN tar xvfz inception-2015-12-05.tgz
WORKDIR /root/models/tutorials/image/imagenet
ADD 256_ObjectCategories.tar .
COPY classify_image.py /root/models/tutorials/image/imagenet
CMD python3 classify_image.py
