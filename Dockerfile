FROM python:3.7.9-alpine

#USER ec2-user

WORKDIR /app
ADD . /app

# ARG CODEARTIFACT_AUTH_TOKEN

# OS dependencies for pip installs
#RUN apk add build-base
#RUN apk add python3-dev
#RUN apk add libffi-dev
#RUN apk add postgresql-libs
#RUN apk add postgresql-dev
#RUN apk add musl-dev
#RUN apk add cargo
#RUN apk add curl-dev
#RUN apk add openssl-dev
#RUN apk add libxslt-dev

# Python packages

#RUN pip install -r requirements.txt
RUN pip install -r requirements.txt

EXPOSE 80
EXPOSE 5000

ENV NAME World

RUN chmod +x /app/start.sh
CMD ["/bin/sh"]
#ENTRYPOINT ["/app/start.sh"]