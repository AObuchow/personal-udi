FROM quay.io/devfile/universal-developer-image:ubi8-latest


# powerline-shell
RUN pip install powerline-shell

COPY .bashrc .bashrc_copied
RUN cat .bashrc_copied >> /home/user/.bashrc


RUN mkdir -p /home/user/.config/powerline-shell 
COPY /powerline-shell/config.json /home/user/.config/powerline-shell/config.json