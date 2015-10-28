FROM centos
MAINTAINER "Jeff Haemer" <jhaemer@gogoair.com>

ADD yum-install.sh /yum-install.sh
ADD yum-pkglists/ /yum-pkglists

RUN /yum-install.sh -p /yum-pkglists/random.pkgs -y --nogpgcheck

CMD ["/bin/bash"]
