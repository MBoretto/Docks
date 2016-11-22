# bitbucket-pipelines-php-mysql

[Bitbucket Pipelines](https://bitbucket.org/product/features/pipelines) [Docker](https://www.docker.com/) image based on Alpine 3.4 

No `CMD` as it is overriden by *Pipelines*

## Packages installed
 - php5.6  MariaDB Composer

## Sample bitbucket-pipelines.yml

```YAML
image: mboretto/bitbucket-pipelines-php-mysql
pipelines:
  default:
    - step:
        script:
          - service mysql start
          - mysql -h localhost -u root -proot -e "CREATE DATABASE test;"
          - composer install
          - vendor/bin/phpcs --report=full --extensions=php -np --standard=build/phpcs .
          - vendor/bin/phpunit tests/HelpersTest.php tests/HashtagsTest.php
          - vendor/bin/phpunit
```
