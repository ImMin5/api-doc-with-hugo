FROM cloudforet/python-core:1.12
ARG PACKAGE_VERSION
ARG BRANCH_NAME
ENV PYTHONUNBUFFERED 1
ENV SPACEONE_PORT 50051
ENV SRC_DIR /tmp/src
ENV CONF_DIR /etc/spaceone
ENV LOG_DIR /var/log/spaceone
ENV GIT_DIR /tmp/git
ENV OPENAPI_JSON_DIR /opt/openapi
ENV PACKAGE_VERSION=$PACKAGE_VERSION


RUN apt-get update && apt-get install -y git

RUN mkdir -p ${OPENAPI_JSON_DIR}
WORKDIR ${GIT_DIR}
RUN git clone --branch ${BRANCH_NAME} https://github.com/cloudforet-io/api.git
RUN cp -r api/dist/openapi/* ${OPENAPI_JSON_DIR}
RUN rm -rf ${GIT_DIR}
