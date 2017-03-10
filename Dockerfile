FROM node:7.7-onbuild

LABEL maintainer="John Berlin"


# Run updates and install deps
# RUN apt-get update && apt-get install -y apt-transport-https curl python build-essential software-properties-common unzip ca-certificates
# RUN apt-get install -y python-software-properties libxext-dev libxrender-dev libxtst-dev \
  #  libgtk2.0-0 libcap2 libxtst6 libgconf-2-4 libxss1 libgnome-keyring-dev libnss3 libasound2 dbus-x11 \
   # libgtkextra-dev libgconf2-dev libxtst-dev \

#RUN apt-get update &&
#   apt-get install -y libgtk2.0-0 libgconf-2-4 libxext-dev libxrender-dev libxtst-dev \
#   libasound2 libxtst6 libcap2 xdg-utils libxss1 libnss3 xvfb dbus-x11 \
#   libpng-dev libssl-dev libjpeg-dev   # gconf2 gconf-service gvfs-bin xdg-utils xvfb


RUN apt-get update &&\
    apt-get install -y libgtk2.0-0 libgconf-2-4 \
    libasound2 libxtst6 libxss1 libnss3 xvfb dbus-x11



CMD ["sh", "run.sh"]