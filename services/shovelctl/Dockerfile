FROM waggle/plugin-base:0.1.0

RUN pip3 install --no-cache-dir requests

WORKDIR /app
COPY . .
ENTRYPOINT ["python3", "/app/shovelctl.py"]
