FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu16.04
#ARG IMAGE_NAME
#FROM ${IMAGE_NAME}:10.0-devel-ubuntu16.04
#MAINTAINER CCJ <ccjdurandal422@163.com>
#
#ENV CUDNN_VERSION 7.5.1.10
#LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"
#
#RUN apt-get update && apt-get install -y --no-install-recommends \
#            libcudnn7=$CUDNN_VERSION-1+cuda10.0 \
#            libcudnn7-dev=$CUDNN_VERSION-1+cuda10.0 && \
#    apt-mark hold libcudnn7 && \
#    rm -rf /var/lib/apt/lists/*

RUN apt-get update
RUN apt-get install -y apt-transport-https vim iproute2 net-tools ca-certificates curl wget software-properties-common

# 安装python3.6 来自第三方
RUN add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update
RUN apt-get install -y python3.6
RUN apt install -y python3.6-dev
RUN apt install -y python3.6-venv

# 为3.6安装pip
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3.6 get-pip.py
RUN apt-get -y install gcc
RUN apt-get -y install g++

# 安装其他包
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple glob
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tensorflow-gpu==1.13.1
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple sentencepiece
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tqdm
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple numpy
