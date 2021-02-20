FROM ubuntu:20.04

RUN apt-get update && \
	apt-get upgrade -y && \
	DEBIAN_FRONTEND=noninteractive apt-get install -y \
		build-essential \
		valgrind \
		strace \
		nasm \
		vim \
		bsdmainutils \
		python3 \
		python3-pip && \
	pip3 install termcolor

COPY dotfiles/.vimrc /root/.vimrc
COPY dotfiles/.bashrc /root/.bashrc
COPY assembler/asm /bin/asm
COPY assembler/rmasm /bin/rmasm

CMD /bin/bash
