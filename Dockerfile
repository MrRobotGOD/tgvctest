FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN apt-get install -y ffmpeg opus-tools bpm-tools
RUN mkdir /app/
WORKDIR /app/
RUN pip3 install --upgrade pip
RUN pip3 install wheel Pyrogram TgCrypto
RUN pip3 install pytgcalls ffmpeg-python
COPY . /app/
RUN pip3 install -r requirements.txt
CMD python3 userbot.py
