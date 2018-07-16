FROM docker.elastic.co/elasticsearch/elasticsearch:6.3.1

ARG PLUGINS=''

USER root

RUN yum install -y unzip

RUN curl -L https://github.com/zhichen/elasticsearch-repository-oss/releases/download/v5.5.3/elasticsearch-repository-oss-5.5.3.zip -o /tmp/elasticsearch-repository-oss.zip && \
    unzip /tmp/elasticsearch-repository-oss.zip -d /tmp/oss-repository && \
    mv /tmp/oss-repository/elasticsearch /usr/share/elasticsearch/plugins/repository-oss && \
    sed -i "/elasticsearch.version=5.5.3/c elasticsearch.version=6.3.0" /usr/share/elasticsearch/plugins/repository-oss/plugin-descriptor.properties && \
    sed -i "/version=5.5.3/c version=6.3.0" /usr/share/elasticsearch/plugins/repository-oss/plugin-descriptor.properties && \
    sed -i '/isolated=/d' /usr/share/elasticsearch/plugins/repository-oss/plugin-descriptor.properties && \
    sed -i '/jvm=/d' /usr/share/elasticsearch/plugins/repository-oss/plugin-descriptor.properties

RUN for plugin in $PLUGINS; do elasticsearch-plugin install -b $plugin; done

USER elasticsearch

