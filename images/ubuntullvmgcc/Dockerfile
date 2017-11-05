FROM ubuntu:16.04

RUN apt-get update && apt-get install -yy software-properties-common wget

RUN apt-add-repository 'deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-3.8 main'
RUN apt-add-repository 'deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-3.9 main'
RUN apt-add-repository 'deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-4.0 main'
RUN apt-add-repository 'deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-5.0 main'
RUN apt-add-repository 'deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial main'
RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
RUN add-apt-repository ppa:ubuntu-toolchain-r/test

RUN apt-get update && apt-get install -yy \
	clang-3.5 llvm-3.5-dev \
	clang-3.6 llvm-3.6-dev \
	clang-3.7 llvm-3.7-dev \
	clang-3.8 llvm-3.8-dev \
	clang-3.9 llvm-3.9-dev \
	clang-4.0 llvm-4.0-dev \
	clang-5.0 llvm-5.0-dev \
	clang-6.0 llvm-6.0-dev \
	g++-5 g++-6 g++-7 \
	cmake git ninja-build libgit2-dev

WORKDIR /root

CMD ["bash", "-c", "wget https://raw.githubusercontent.com/chigraph/buildbot/master/images/buildscript.sh && /bin/bash buildscript.sh"]
