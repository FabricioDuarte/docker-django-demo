# La imagen base es la de Python 2.7
FROM python:2.7
ENV PYTHONUNBUFFERED 1

# Creo la carpeta donde voy a descargar el código
RUN mkdir /code
WORKDIR /code

# Clono el repositorio
RUN git clone https://github.com/FabricioDuarte/docker-django-demo.git .

ADD requirements.txt /code/
RUN pip install -r requirements.txt
