FROM buildbot/buildbot-worker:master


USER root
RUN apt-get update && apt-get install -yy docker.io
RUN usermod -aG docker buildbot
COPY buildbot.tac /buildbot/buildbot.tac

USER buildbot
CMD ["bash", "-c", "systemctl start docker && /usr/local/bin/dumb-init twistd -ny buildbot.tac"]
