# Development environment for Python 3.9 

## Requirement
- Ubuntu Server 20.04 LTS (HVM), SSD Volume Type
- Docker >= 20.10.07

## Deployment
Launch an EC2 instance with Ubuntu 20.04 LTS AMI then access to the EC2 instance via SSH. Sample `.ssh/config` is following. 

```
Host aws-dev
    HostName ec2-X-XXX-XX-XXX.compute-1.amazonaws.com
    User ubuntu
    IdentityFile ~/.ssh/XXXXXX-key.pem

Host aws-dev-docker
    Hostname 127.0.0.1
    User root
    Port 10000
    ProxyCommand ssh -W %h:%p aws-dev
```
Run ssh command.

```
$ ssh aws-dev
```

Launch the Docker container with following commands.

```
$ git clone https://github.com/tkazusa/dotfiles-docker.git
$ cd dotfiles-docker
$ docker build -t dev-docker .
$ docker run -d -p 10000:22 dev-docker
```

## Attaching to the Docker container
After launching the dev-docker container, you can access to it via SSH or VSCode Remote SSH.

```
$ ssh root@127.0.0.1 -p 10000
```

If you failed to login the container due to key-host issue, update your known_hosts file or delete the key in the known_hosts file.

```
ssh-keygen -f "/home/ubuntu/.ssh/known_hosts" -R "[127.0.0.1]:10000"
```

## Python Develop Environment
### Switching python versions between environments
To switch between Python versions, it is recommended to use pyenv.
Details are in [the poetry document](https://python-poetry.org/docs/managing-environments/). 
```
$ pyenv install 3.6.9
$ pyenv local 3.6.9
```