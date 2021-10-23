FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && apt-get install -y \
    build-essential libssl-dev libffi-dev \
    libxml2-dev libxslt1-dev zlib1g-dev \
    python3-pip git software-properties-common

RUN apt-get install python3.8-dev

RUN pip install tfx==1.2.0 tensorflow==2.5.0

COPY ./requirements.txt ./opt
RUN pip install -r /opt/requirements.txt

RUN pip install jupyterlab

RUN apt-get install -y curl
RUN curl -sL 'http://deb.nodesource.com/setup_16.x' | bash -s --

RUN apt-get update -y && apt-get install -y nodejs

RUN jupyter labextension install tensorflow_model_analysis && \
    jupyter labextension enable tensorflow_model_analysis

WORKDIR /home/tfx

ENV JUPYTER_ENABLE_LAB yes

EXPOSE 8888

ENTRYPOINT jupyter lab  \
    --ip 0.0.0.0 \
    --no-browser \
    --allow-root \
    --LabApp.token='' \
    --ServerApp.base_url='/jupyterlab' \
    --ServerApp.allow_origin='*'
