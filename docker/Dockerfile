FROM redmine:4.2.1

RUN apt-get update && apt-get install -y gcc g++ make gpg curl nginx;

RUN gpg --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB; \
    curl -sSL https://get.rvm.io | bash -s stable --ruby;

RUN /bin/bash -c " \
      source /usr/local/rvm/scripts/rvm \
      rvm get stable --autolibs=enable; \
      rvm install ruby-2.6.7; \
      rvm --default use ruby-2.6.7; \
    ";

COPY ./theme /usr/src/redmine/public/themes/main

COPY ./plugins /usr/src/redmine/plugins

COPY ./docker/docker-entrypoint.sh /

COPY nginx.conf /etc/nginx/sites-enabled/default

RUN ["chmod", "+x", "/docker-entrypoint.sh"]