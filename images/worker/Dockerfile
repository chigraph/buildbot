FROM buildbot/buildbot-worker:master


USER root
RUN apt-get update && apt-get install -yy docker.io sudo
RUN usermod -aG docker buildbot
RUN usermod -aG sudo buildbot
RUN passwd -d buildbot

USER buildbot
CMD ["bash", "-c", "sudo chown -R buildbot: /var/run/docker.sock && /usr/local/bin/dumb-init twistd -ny buildbot.tac"]
