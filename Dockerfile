FROM resin/rpi-raspbian:wheezy-2015-01-21

# Install Dropbear.
RUN apt-get update && apt-get install dropbear

COPY start /app

CMD ["bash", "app/start"]
