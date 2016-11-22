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
          - /usr/bin/mysqld --defaults-file=/etc/mysql/my.cnf --skip-grant-table &
          - composer install
          - vendor/bin/phpcs --report=full --extensions=php -np --standard=build/phpcs .
          - while [ ! -e /run/mysqld/mysqld.sock ]; do echo "=> Waiting for confirmation of MySQL service startup.."; inotifywait -e create -q /run/mysqld/; done                                                   
          - mysql -h localhost -u root -e "CREATE DATABASE test;"¬
          - vendor/bin/phpunit¬
```
