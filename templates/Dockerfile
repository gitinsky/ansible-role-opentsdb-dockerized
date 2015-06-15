FROM gitinsky/oracle-java-8:0.1.3
MAINTAINER Git In Sky <support@gitinsky.com>

RUN \
  apt-get -y install git make autoconf python && \
  cd / && \
  git clone git://github.com/OpenTSDB/opentsdb.git && \
  cd opentsdb && PATH=$PATH:$JAVA_HOME/bin ./build.sh
#  cd opentsdb && git checkout next && PATH=$PATH:$JAVA_HOME/bin ./build.sh

RUN mkdir /etc/service/opentsdb
COPY run /etc/service/opentsdb/run
