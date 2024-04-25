FROM ubuntu:22.04

# install app dependencies
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip install flask==3.0.*

COPY . .

ENV FLASK_APP api.py
EXPOSE 5000

CMD ["flask", "run", "--host", "0.0.0.0", "--port", "8000"]

#docker build -t test:latest . (criando uma imagem teste)
# Running on http://http://172.0.0.1:5000/


