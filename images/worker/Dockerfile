FROM buildbot/buildbot-worker


USER root
RUN apt-get update && apt-get install -yy docker.io
RUN usermod -aG docker buildbot

USER buildbot
CMD ["/usr/local/bin/dumb-init", "twistd", "-ny", "buildbot.tac"]
