FROM ubuntu:16.04

ADD . /
# Run updates and install deps
RUN apt-get update
RUN apt-get install -y -q build-essential checkinstall libgtk2.0-0 libgconf-2-4 \
libasound2 libxtst6 libxss1 libnss3 xvfb libcanberra-gtk* apt-transport-https \
libgtkextra-dev libgconf2-dev libxtst-dev firefox software-properties-common curl \
        git \
	gconf2 \
	gconf-service \
	gvfs-bin \
	libasound2 \
	libcap2 \
	libgnome-keyring-dev \
	libnotify4 \
	libxkbfile1 \
	libxss1 \
	libxtst6 \
	xdg-utils 

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - && apt-get install -y nodejs


RUN npm i
CMD node --harmony index.js --width=1000 --height=1000 --savepath=out/theImapge.png --site=http://rt.com
