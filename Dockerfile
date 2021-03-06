FROM debian
RUN apt-get update && apt-get install -y \
  wget \
  novnc \
  python3-websockify \
  firefox-esr \
  x11vnc \
  xvfb
RUN mkdir /verbs
VOLUME ["/root/.runelite"]
VOLUME ["/root/jagexcache"]
WORKDIR /root
ENV PASSWORD 1234
ENV SCREENSIZE 1920x1080x24
COPY startup.sh .
RUN mkdir /root/.vnc
RUN openssl req -x509 -nodes -newkey rsa:3072 -keyout novnc.pem -out novnc.pem -days 3650 -subj '/CN=localhost/O=Corp/C=EU'
RUN chmod 755 *.sh
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
EXPOSE 6080
CMD [ "/root/startup.sh" ]
