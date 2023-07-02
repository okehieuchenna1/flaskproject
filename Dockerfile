FROM python:3.6-slim

RUN  apt-get clean && apt-get -y update

RUN apt-get -y install \
    nginx \
    python3-dev \
    build-essential




COPY ./requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

COPY ./app.py ./app.py 

EXPOSE 5000

CMD ["python3", "app.py"]
