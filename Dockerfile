FROM alpine:3.13.2

RUN apk update \
	&& apk add curl git vim which wget sudo shadow openssl -v --no-cache \
	&& sed -i "/# %wheel ALL=(ALL) ALL/c\\%wheel ALL=(ALL) ALL" /etc/sudoers \
	&& useradd -ms /bin/sh --password $(openssl passwd root) webdev \
	&& usermod -aG wheel webdev

USER webdev

WORKDIR /home/webdev

RUN echo root | sudo -S apk update \
	&& echo root | sudo -S apk add zsh \
	&& echo root | chsh -s $(which zsh) && zsh

RUN echo root | sudo -S apk add --update nodejs npm \
	&& echo root | sudo -S npm i gulp -g

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
	php8-mysqli

RUN wget https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer -O - -q | php8 -- --quiet \
	&& echo root | sudo -S mv composer.phar /usr/local/bin/composer \
	&& curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
	&& echo root | sudo -S mv wp-cli.phar /usr/local/bin/wp

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN mkdir /home/webdev/www && mkdir /home/webdev/www/public_html

WORKDIR /home/webdev/www/public_html

COPY --chown=webdev configs/.zshrc /home/webdev/.zshrc
COPY --chown=webdev configs/.functions.zsh /home/webdev/.functions.zsh

RUN echo root | sudo -S apk del curl vim which wget shadow openssl
