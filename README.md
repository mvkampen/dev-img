
# Installation

## MacOSX
Download boot2docker:
http://boot2docker.io/

Start boot2docker.app from Applications:
(inits shell properly for you)

Build docker image:
docker build -t < repo / name : tag > < location with Dockerfile >
```bash
docker build -t stylexplore/ember:latest git@github.com:mvkampen/dev-img.git
```

Run ssh agent and add ssh key to pull from private repo:
```bash
eval $(ssh-agent)

ssh-add ~/.ssh/<keyname>

ssh-add -l
```

Fork the project on github and clone it:
```bash
https://github.com/<username>/stylexplore-frontend
```

Run image as docker container
Mount host volume with source code
Bind ports
Install dependencies (npm and bower)
Run server

docker run -v /<host absolute path>:/<vm workdir> -p <host port>:<vm exposed port> <image tag name> <exec> <args>
```bash
docker run -d -v /Users/WS11/projects/sx-f:/usr/src/frontend -p 4200:4200 -p 35729:35729 stylexplore/ember:latest /bin/bash -c 'ember install && ember serve'
```
Your container should be running the server
If not listed the process ended with error?
Interact with container through tty add flags -it on run command
```bash
docker ps
```

Find your boot2docker host ip
```bash
boot2docker ip
```

Server now available on <boot2docker ip>:4200

## Windows

Download boot2docker
http://boot2docker.io/

Download OpenSSH
http://sshwindows.sourceforge.net/

### Linux (ubuntu)
https://docs.docker.com/installation/ubuntulinux/
