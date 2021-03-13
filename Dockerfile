FROM ubuntu:20.04

LABEL "maintainer"="solareenlo <solareenlo@protonmail.com>"
LABEL "repository"="https://github.com/solareenlo/42docker"

RUN apt-get update && \
	apt-get upgrade -y && \
	DEBIAN_FRONTEND=noninteractive apt-get install -y \
		git \
		build-essential \
		valgrind \
		strace \
		nasm \
		vim \
		bsdmainutils \
		python2 \
		python3 \
		python3-pip && \
	rm -fr /var/lib/apt/lists/*

COPY dotfiles/.vimrc /root/.vimrc
COPY dotfiles/.bashrc /root/.bashrc
COPY assembler/asm /bin/asm
COPY assembler/rmasm /bin/rmasm

WORKDIR /usr/src/norminette

RUN git clone --depth 1 https://github.com/42School/norminette . && \
	pip3 install -r requirements.txt && \
	python3 setup.py install

WORKDIR /code

CMD /bin/bash
