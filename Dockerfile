FROM python:3.6.9-buster

RUN apt-get update && apt-get install python3 python3-pip git python3-sqlalchemy -y && \
    pip3 install pandas scipy lxml

# quakeml is provided as stand alone python script inside of the github repository

RUN mkdir /usr/share/git && \
    cd /usr/share/git && \
    git clone https://github.com/gfzriesgos/quakeledger.git
