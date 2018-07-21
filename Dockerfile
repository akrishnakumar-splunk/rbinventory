FROM ubuntu:xenial
MAINTAINER Aditya Krishnakumar "akrishnakumar@splunk.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
EXPOSE 5000
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["rbinventory.py"]