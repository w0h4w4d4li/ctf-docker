# CTF Docker Container

A Jupyter notebook environment built for attacking crypto CTF challenges.

The image comes with the following installed and integrated:
 - sagemath
 - pwntools
 - pycryptodome
 - z3-solver
 - ecdsa  
 - pkcs1  
 - gmpy2  
 - factordb-pycli

## Installation

Download and run with:
```
docker run -p 127.0.0.1:8888:8888 -it wh1ter0s3/ctf-crypto:latest
```
Then open 127.0.0.1:8888 in your browser.
