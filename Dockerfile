FROM python:3.9.16

WORKDIR /usr/src/app

RUN apt-get -y update && apt-get install -y ffmpeg awscli
RUN pip3 install torch torchvision backgroundremover

COPY . .

RUN chmod +x bgremove.sh
CMD ./bgremove.sh "https://www.python.org/static/community_logos/python-logo.png" "s3bucket/path/to/dir"
