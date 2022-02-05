FROM ubuntu:latest

# ubuntu
RUN useradd k8sclient

RUN mkdir /app
COPY build/k8s-client-linux /app/

RUN mv /app/k8s-client-linux /app/k8s-client && \
    chmod +x /app/k8s-client

USER k8sclient

CMD [ "/app/k8s-client" ]
