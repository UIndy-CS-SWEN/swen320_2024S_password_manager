<<<<<<< HEAD
# FROM python:3.9-bullseye

# # Install requirements
# COPY requirements.txt /tmp/requirements.txt
# RUN pip install --no-cache-dir -r /tmp/requirements.txt

# #RUN mkdir -p /app
# WORKDIR /app

# # use $PWD to link host and guest drives
# COPY app/*.py /app/
# COPY app/ulib /app/ulib
# COPY app/run_flask.sh /app/

# # copy everything
# #COPY app/* /app/

# CMD [ "./run_flask.sh"]
=======
FROM python:3.11.3-slim-buster

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV FLASK_SERVER_PORT 9090

WORKDIR /src

# install dependencies
RUN pip install --upgrade pip
COPY requirements.txt /src/requirements.txt
RUN pip install -r requirements.txt

# copy project
COPY . .

RUN chmod +x /src/docker-entrypoint.sh

CMD ["/bin/bash", "/src/docker-entrypoint.sh"]




>>>>>>> flask_ex1/main
