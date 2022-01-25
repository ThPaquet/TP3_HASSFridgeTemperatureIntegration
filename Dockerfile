ARG BUILD_FROM
FROM ${BUILD_FROM}

# Copy data for add-on
RUN \
    apk add --no-cache \
        python3

WORKDIR /data 

COPY webapp/index.html /
COPY run.sh /

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]