FROM sagemath/sagemath:latest

USER root

RUN apt-get -qq update \
    && apt-get -qq install -y --no-install-recommends \
    netcat \
    tmux \
    vim \
    && rm -rf /var/lib/apt/lists/*

USER sage

RUN sage -pip install \
    pwntools \
    pyCryptoDome \
    z3-solver \ 
    ecdsa \ 
    pkcs1 \ 
    gmpy2 \ 
    factordb-pycli

ENV PWNLIB_NOTERM=true

ENV BLUE="\e[34m" \
    RED="\e[31m" \
    YELLOW="\e[33m" \
    NOCOLOR="\e[0m"

ENV BANNER=" \n\
${BLUE}----------------------------------${NOCOLOR} \n\
${YELLOW}CTF Docker Container${NOCOLOR} \n\
\n\
${RED}http://127.0.0.1:8888/${NOCOLOR} \n\
${BLUE}----------------------------------${NOCOLOR} \n\
"


CMD ["echo -e $BANNER && sage -n jupyter --NotebookApp.token='' --no-browser --ip='0.0.0.0' --port=8888"]