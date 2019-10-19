FROM python:3.7-alpine

# set /code to working direcotry
WORKDIR /code

# set eviroment variables
ENV FLASK_APP app/app.py
ENV FLASK_RUN_HOST 0.0.0.0

# install dependencies for building python pakages
RUN apk add --no-cache gcc musl-dev linux-headers

# Copy and install python dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# copy source code
COPY ./app ./app
