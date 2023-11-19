FROM alpine
RUN mkdir /opt/add_dir
WORKDIR /opt/add_dir
ARG CACHEBUST=yes
ADD check_add_dockerfile.txt . 
CMD ["ls", "."] 

 
