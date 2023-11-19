FROM alpine
RUN apk update && apk add git
ADD https://api.github.com/repos/ThatsRightImKiryu/DevOps-practice/commits /dev/null
RUN echo "Built at: $(date)" >> /build_time.txt
