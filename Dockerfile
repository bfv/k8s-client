FROM ubuntu:latest

# ubuntu
RUN useradd nobody

RUN mkdir /app
COPY build/k8s-client-linux /app/

RUN mv /app/k8s-client-linux /app/k8s-client && \
    chmod +x /app/k8s-client

USER nobody

CMD [ "/app/k8s-client" ]
