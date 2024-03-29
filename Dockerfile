FROM alpine:3.16.3

# alpine:3.16.3 = php8.0
# alpine:3.17.0 = php8.2, can't move until wpcs supports php 8

RUN apk update \
	&& apk add tzdata \
	&& cp /usr/share/zoneinfo/America/Chicago /etc/localtime

RUN apk add curl git vim which wget sudo shadow openssl -v --no-cache \
	&& sed -i "/# %wheel ALL=(ALL:ALL) ALL/c\\ %wheel ALL=(ALL:ALL) ALL" /etc/sudoers \
	&& useradd -ms /bin/sh --password $(openssl passwd root) webdev \
	&& usermod -aG wheel webdev

USER webdev

WORKDIR /home/webdev

RUN echo root | sudo -S apk update \
	&& echo root | sudo -S apk add zsh \
	&& echo root | chsh -s $(which zsh) && zsh

RUN echo root | sudo -S apk add --update nodejs npm \
	&& echo root | sudo -S npm i browser-sync pnpm -g

RUN echo root | sudo -S apk add php8 \
	&& echo root | sudo -S apk add \
	php8-phar \
	php8-mbstring \
	php8-openssl \
	php8-tokenizer \
	php8-xmlwriter \
	php8-simplexml \
	php8-curl \
	php8-xmlreader \
	php8-mysqli \
	imagemagick \
	&& echo root | sudo mv /usr/bin/php8 /usr/bin/php

RUN echo root | sudo -S apk add mysql-client

RUN wget https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer -O - -q | php -- --quiet \
	&& echo root | sudo -S mv composer.phar /usr/local/bin/composer \
	&& curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
	&& echo root | sudo -S mv wp-cli.phar /usr/local/bin/wp

RUN echo root | sudo -S apk update \
	&& echo root | sudo -S apk add rsync

RUN mkdir /home/webdev/www && mkdir /home/webdev/www/public_html

WORKDIR /home/webdev/www/public_html

COPY --chown=webdev .zshrc /home/webdev/.zshrc
COPY --chown=webdev .config /home/webdev/.config

RUN echo root | sudo -S apk del vim which wget shadow openssl tzdata
