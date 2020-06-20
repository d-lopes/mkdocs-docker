# mkdocs-docker

Docker Wrapper for the MkDocs project: https://www.mkdocs.org/

Example:

```
$ docker run --rm --user $(id -u):$(id -g) \
        -v ${PWD}/src/main/resources/docs/public-mkdocs.yml:/docu/mkdocs.yml \
        -v ${PWD}/src/main/resources/docs/public:/docu/input \
        -v ${PWD}/src/main/resources/templates/mkdocs/public:/docu/theme \
        -v ${PWD}/build/output/public:/docu/generated \
    dl0pes/mkdocs:latest build
```
