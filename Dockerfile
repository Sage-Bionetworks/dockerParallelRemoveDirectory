FROM centos:7.2.1511
MAINTAINER Thomas Schaffter <thomas.schaffter@gmail.com>
RUN yum install -y perl wget
RUN wget http://repo.openfusion.net/centos7-x86_64/parallel-20160622-1.of.el7.x86_64.rpm && rpm -Uvh parallel-20160622-1.of.el7.x86_64.rpm && rm -fr parallel-20160622-1.of.el7.x86_64.rpm
WORKDIR /
COPY run.sh /
ENTRYPOINT ["/bin/bash","/run.sh"]