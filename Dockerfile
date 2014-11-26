FROM resin/rpi-raspbian:wheezy

# Install Dropbear.
RUN apt-get update && apt-get install dropbear

ADD start /start

RUN chmod a+x /start

CMD /start
