FROM csepely/syslog-ng
RUN apt-get update &&\
  apt-get upgrade -y &&\
  apt-get install -y lighttpd php-cgi php-mysql php-mcrypt &&\
  rm -rf /var/lib/apt/lists/*
RUN ln -rs /docker.init/modules.available/lighttpd.sh /docker.init/modules.enabled/001-lighttpd.sh
EXPOSE 80
