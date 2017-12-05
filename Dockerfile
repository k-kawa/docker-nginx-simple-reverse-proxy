FROM nginx:alpine

ENV FORWARD_PORT=443 \
    FORWARD_HOST=another-server \
    FORWARD_PROTOCOL=https

WORKDIR /opt

RUN apk add --no-cache gettext

COPY nginx.conf launch.sh ./

CMD ["./launch.sh"]