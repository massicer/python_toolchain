FROM python:3.9.6-slim

ENV BLACK_VERSION=21.6b0
ENV FLAKE_8_VERSION=3.9.2
ENV ISORT_VERSION=5.9.1
ENV PYTEST_VERSION=6.2.4
ENV PYTEST_COV_VERSION=2.12.1

RUN apt-get update && apt-get install build-essential -y && apt-get install git -y

RUN pip install black==${BLACK_VERSION} \
    flake8==${FLAKE_8_VERSION} \
    isort==${ISORT_VERSION} \
    pytest==${PYTEST_VERSION} \
    pytest-cov==${PYTEST_COV_VERSION} 

COPY ./shared ./shared