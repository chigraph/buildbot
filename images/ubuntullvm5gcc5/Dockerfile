FROM ubuntu:16.04 

RUN apt-get update && apt-get install software-properties-common

RUN apt-add-repository 'deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-5.0 main'
RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add -

RUN apt-get update && apt-get install clang-5.0 llvm-5.0-dev \
	g++-5 cmake git ninja-build

WORKDIR /root

ENV CHI_COMPILER=g++-5
ENV CHI_LLVM_CONFIG=/usr/lib/llvm-5/bin/llvm-config

CMD ["bash"]
