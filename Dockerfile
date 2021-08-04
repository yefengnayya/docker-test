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
RUN pip config --site set global.extra-index-url https://aws:eyJ2ZXIiOjEsImlzdSI6MTYyODAwNTQyNiwiZW5jIjoiQTEyOEdDTSIsInRhZyI6IkRPdUZQWVN3MTVMb1ZJQWgtbjc0VGciLCJleHAiOjE2MjgwNDg2MjYsImFsZyI6IkExMjhHQ01LVyIsIml2IjoicFJTZUZRbkhwOTRMX1cwZyJ9.nivv67WMMFbq7P72xoRbQg.b30tq1mQn6z6xjZh._KA63w-aG1dpV8shBzxQy6rDNOt7OpuIsG_rffYgW6db4HVrsjVKIc70SlkNQ4HyLAeV1ELD3XofD4IT-2a_vTMn2TBJSuZ84vvp9ZG-sLEjwScpDvv1olU52c1oFc2pZ_OpeVcFb-7H00hsCbaq592FZsOhz-jO9fCKbCIBYLdRO57wzuSLzdnuWgon_Ldx9ziLCz0mgg7eDWA3XkHmxnfY87RjNkOYfdo2cHaNe1iZbK05F6e74JLkmAebnWZj6VIk_YZzQSvDMzxIpZZ1Yz-ivkhq2qLpkWu2BuhevxEHpzHTV6QIFpyR9qMnmN5WTd-Sc4KL0LVCkOc5aV7J813uxI3KrPxmpM1cx0_5zD5AltXW8LTwbfoZ2v4wgk0LqG34dnfBEP_kc4mysUfaQ2bwFkmA_LSffNDUZpQwSqGv7rI5_NsfJmjGTD8ixfq059bgXuchlpXoBs4mcNH-r-ecqmkSzsWB0D5ob8-1_JXjullCucJ6fAXxLTZS4RbS78alfF_xlA1B7KYs453z62ZExc4XILIIvVGu9b4Y9mMEZ4ddZD-KUXrmYirHLMOrJUiZNw-VnW1N8xJeoK22AdEwifERLxPhAmRY7FUKadBSK_vjrHrH6Rax3HmezRkm7n6j6cbHOhyNNJYOOppStdxReCZsrhCOpePW_xm9FDu7C2VWRIA0KkuA90E3kgaWZV6-O5t3ysMLbU0bJ_WGNT4hkUr9WeLeFRAQPfiuRYHWI92SeI6HNNebPG46_g6cuHCxBc5mgu-_jjCJhTIj6OoeAPaYHRiCfdb2Z-mHeVb-2CRoI3VQsOpShfDpXJrswPh6pxQgNwzZwZSpcJN2mAQna6RUuRi3g6DfbPh6f7DgWjHUDrKLXKPjQpXtRsra7SBfHCMeLZjhqeUN3ro.WFtU_AAvlA5AkShT7uGEbA@nayya-py-945151678220.d.codeartifact.us-east-1.amazonaws.com/pypi/nayya-python-packages/simple/
RUN pip install -r requirements.txt

EXPOSE 80
EXPOSE 5000

ENV NAME World

RUN chmod +x /app/start.sh
CMD ["/bin/sh"]
#ENTRYPOINT ["/app/start.sh"]