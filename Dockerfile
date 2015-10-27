FROM centos
MAINTAINER "Jeff Haemer" <jhaemer@gogoair.com>

ADD yum-install.sh /yum-install.sh
ADD pkg-list /pkg-list

RUN /yum-install.sh -p /pkg-list -y --nogpgcheck

CMD ["/bin/bash"]
