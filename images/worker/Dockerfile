FROM buildbot/buildbot-worker:master


USER root
RUN apt-get update && apt-get install -yy docker.io
RUN usermod -aG docker buildbot

RUN touch /var/run/docker.sock
RUN chown -R buildbot: /var/run/docker.sock

USER buildbot
CMD ["/usr/local/bin/dumb-init", "twistd", "-ny", "buildbot.tac"]
