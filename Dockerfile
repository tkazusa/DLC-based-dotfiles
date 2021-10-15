# python:3.9-buster is based on Debian 10.11
FROM python:3.9-buster
# Deep Learning Container from AWS is optional for CUDA enbironment.
# To utilize AWS DLC, you need to login AWS ECR reposirory.
# FROM 763104351884.dkr.ecr.us-east-1.amazonaws.com/pytorch-training:1.9.0-gpu-py38-cu111-ubuntu20.04

# Execute dotfiles installation
# Accessing to this container as root via SSH, so home directory supposed to be /root. 
ARG APP_PATH=root
COPY dotfiles/ $APP_PATH/.dotfiles/
RUN $APP_PATH/.dotfiles/setup.sh

# Install Open SSH
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd

# Setting up SSH server config.
RUN echo 'root:aaa' | chpasswd
COPY dotfiles/configs/sshd/sshd_config /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]