FROM ubuntu:14.04
RUN apt-get update && apt-get install -y firefox
RUN groupadd -g 1000 kiryu
RUN useradd -d /home/kiryu -s /bin/bash \
	-m kiryu -u 1000 -g 1000
USER kiryu
ENV HOME /home/kiryu
CMD /usr/bin/firefox
