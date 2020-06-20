FROM python:3.8.3-buster

RUN pip install mkdocs

# todo: create user and switch to user

RUN mkdir -p /docu/input \
    && mkdir -p /docu/generated

WORKDIR /docu

VOLUME [ "/docu/input", "/docu/generated", "/docu/theme", "/docu/mkdocs.yml" ]

CMD [ "mkdocs" ]
ENTRYPOINT [ "mkdocs" ]
