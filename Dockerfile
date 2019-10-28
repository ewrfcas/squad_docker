FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu16.04

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
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tensorflow-gpu==1.13.1
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple torch==1.2.0
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple sentencepiece
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple blocksparse
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tqdm
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple numpy
