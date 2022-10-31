FROM teddysun/xray

WORKDIR /demo

COPY main.py .
COPY util.zip .
RUN apk add --no-cache python3 && \
    chmod +x main.py

ENTRYPOINT ["python3","main.py"]

CMD ["python3","main.py"]
