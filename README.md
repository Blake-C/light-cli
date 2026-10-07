# General CLI

This repository contains general command line tools for local web development. This repo is not meant and should never be used in a production environment.

## Linux:

- alpine:3.24.1

## CLI User:

- **User**: webdev
- **Password**: root

## Packages

| Package      | Version  |
| ------------ | -------- |
| php          | v8.4.26  |
| node         | v24.18.1 |
| npm          | v11.19.1 |
| pnpm         | v12.3.4  |
| zsh          | v5.9     |
| browser-sync | v3.0.4   |
| composer     | v2.10.3  |
| wp-cli       | v2.12.0  |
| mysql-client | v11.8.8  |
| imagemagick  | v7.1.2   |

## PHP extensions

The image has the extensions that wp-cli, Drush, the Joomla CLI installer, and the Composer installs for Laravel, Symfony, CodeIgniter, CakePHP, Craft CMS, Statamic, and Grav need. Craft CMS requires bcmath, and Laravel uses pdo_sqlite for its default database and its test suite.

- bcmath
- ctype
- curl
- dom
- exif
- fileinfo
- gd
- iconv
- imagick
- intl
- mbstring
- mysqli
- openssl
- pcntl
- pdo
- pdo_mysql
- pdo_sqlite
- phar
- posix
- redis
- session
- simplexml
- sodium
- sqlite3
- tokenizer
- xml
- xmlreader
- xmlwriter
- zip
