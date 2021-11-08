FROM docker.elastic.co/logstash/logstash:7.15.1
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
ADD pipeline/ /usr/share/logstash/pipeline/
ADD config/ /usr/share/logstash/config/
ADD logs/ /usr/share/logstash/logs/
ADD data/ /usr/share/logstash/data/
ADD postgresql-42.3.1/ /usr/share/logstash/postgresql-42.3.1/