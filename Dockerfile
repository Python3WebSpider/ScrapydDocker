FROM python:3.6
WORKDIR /app
COPY . /app
COPY ./scrapyd.conf /etc/scrapyd/
RUN pip install pip -U \
    && pip install -r requirements.txt
EXPOSE 6800
CMD ["scrapyd"]