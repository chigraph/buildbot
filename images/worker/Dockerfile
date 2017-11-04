FROM buildbot/buildbot-worker:master


USER root
RUN apt-get update && apt-get install -yy docker.io
RUN usermod -aG docker buildbot
RUN systemctl enable docker

USER buildbot
CMD ["/usr/local/bin/dumb-init", "twistd", "-ny", "buildbot.tac"]
