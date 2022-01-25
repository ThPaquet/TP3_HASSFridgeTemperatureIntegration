ARG BUILD_FROM
FROM ${BUILD_FROM}

# Copy data for add-on
RUN \
    apk add --no-cache \
        python3

WORKDIR /data 
COPY run.sh /

RUN mkdir webapp
COPY webapp /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]