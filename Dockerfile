FROM ubuntu
ENV POSTGRES_USER 'test'
ENV POSTGRES_PASSWORD 'password'
ENV POSTGRES_HOST '127.0.0.1'
ENV POSTGRES_DB 'example'
ENV POSTGRES_PORT 5432

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get -y install python3-pip

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt
COPY . /app

CMD [ "python3", "src/example/app.py" ]