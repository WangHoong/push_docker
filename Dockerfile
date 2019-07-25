From centos

RUN yum install -y  wget
RUN cd /etc/yum.repos.d
RUN wget -O CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
RUN yum clean all
RUN yum makecache

RUN yum -y update
RUN yum install -y openssh-server sudo vim
RUN yum install -qy curl
RUN yum install -y git libmysqlclient-dev mysql-devel
RUN yum install -y gcc gcc-c++ make
RUN yum install -y epel-release
#install nodejs
RUN curl -sL https://rpm.nodesource.com/setup_6.x | bash -
RUN yum -y install  nodejs
#install push-server
RUN npm install -g socket.io-push
RUN mkdir -p /var/www/push-server \
   && cd /var/www/push-server \
   && generate-push-server-config

EXPOSE 12001 10001 11001
