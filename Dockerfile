FROM radrad0021/musicbot:bot
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app/
RUN pip3 install -U -r requirements.txt
CMD bash start
