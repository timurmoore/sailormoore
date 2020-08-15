FROM registry.gitlab.com/timurmoore/oss/timoore:dockerstation

RUN git clone https://gitlab.com/HarukaNetwork/OSS/HarukaAya.git -b staging /data/timoore

COPY ./config.yml /data/HarukaAya

WORKDIR /data/timoore
timoore
CMD ["python", "-m", "timoore"]
