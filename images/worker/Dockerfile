FROM buildbot/buildbot-worker

RUN apt-get update && apt-get install docker.io

CMD ["/usr/local/bin/dumb-init", "twistd", "-ny", "buildbot.tac"]
