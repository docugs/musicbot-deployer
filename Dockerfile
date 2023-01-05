FROM radrad0021/musicbot:latest
WORKDIR /ymb/
RUN pip3 install -U -r requirements.txt
CMD bash start
