FROM debian:11.1
LABEL "repository"="https://github.com/soohoonchoi/example"
LABEL "maintainer"="Soohoon Choi"

RUN apt update \
	&& apt -y upgrade \
  && apt install -y hub \
  && apt autoremove \
	&& apt autoclean \
	&& apt clean

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

