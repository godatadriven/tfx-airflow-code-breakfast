FROM apache/airflow:2.1.3-python3.8

USER root

RUN apt-get update -y && apt-get install -y \
    build-essential libssl-dev libffi-dev \
    libxml2-dev libxslt1-dev zlib1g-dev \
    python3-pip git software-properties-common

USER airflow

RUN pip install apache-airflow-providers-http==2.0.1 apache-airflow-providers-postgres==2.2.0
RUN pip install tfx==1.2.0 tensorflow==2.5.0
RUN pip install tensorflow_text==2.5.0 tensorflow_ranking python-snappy

# workaround for tfx.components.util.udf_utils.install_to_temp_directory
ENV PIP_USER false
# alternatively use /etc/pip.conf