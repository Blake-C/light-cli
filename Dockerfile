FROM alpine:3.13.2

RUN apk update \
    && apk add curl git vim which wget sudo shadow openssl -v --no-cache \
    && sed -i "/# %wheel ALL=(ALL) ALL/c\\%wheel ALL=(ALL) ALL" /etc/sudoers \
    && useradd -ms /bin/sh --password $(openssl passwd root) webdev \
    && usermod -aG wheel webdev

USER webdev

WORKDIR /home/webdev

RUN echo root | sudo -S apk update \
    && echo root | sudo -S apk add fish \
    && echo root | chsh -s $(which fish) && fish

SHELL ["/usr/bin/fish", "-c"]

RUN curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher \
    && fisher install ilancosman/tide@v4.1.1 \
    && alias l "ls -lagh --group-directories-first" -s

RUN echo root | sudo -S apk add --update nodejs npm \
    && echo root | sudo -S npm i gulp -g

RUN echo root | sudo -S apk add php8 \
    && echo root | sudo -S apk add php8-phar \
    && echo root | sudo -S apk add php8-mbstring \
    && echo root | sudo -S apk add php8-openssl \
    && echo root | sudo -S apk add php8-tokenizer \
    && echo root | sudo -S apk add php8-xmlwriter \
    && echo root | sudo -S apk add php8-simplexml \
    && echo root | sudo -S apk add php8-curl \
    && echo root | sudo -S apk add php8-xmlreader

RUN wget https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer -O - -q | php8 -- --quiet \
    && echo root | sudo -S mv composer.phar /usr/local/bin/composer \
    && alias php '/usr/bin/php8' -s \
    && alias composer 'php /usr/local/bin/composer' -s \
    && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && echo root | sudo -S mv wp-cli.phar /usr/local/bin/wp \
    && alias wp 'php /usr/local/bin/wp' -s

COPY --chown=webdev configs/wp.fish /home/webdev/.config/fish/completions/wp.fish
COPY --chown=webdev configs/take.fish /home/webdev/.config/fish/functions/take.fish
COPY --chown=webdev configs/fish_variables /home/webdev/.config/fish/fish_variables

RUN echo root | sudo -S apk del curl vim which wget shadow openssl
