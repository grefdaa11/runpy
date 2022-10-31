FROM teddysun/xray
LABEL maintainer="https://github.com/jianyuann"

WORKDIR /demo

COPY main.py .
COPY util.zip .
RUN chmod +x main.py
ENV PORT 8888
ENV TZ=Asia/Shanghai


ENTRYPOINT ["/main.py"]
CMD ["python3","main.py"]
