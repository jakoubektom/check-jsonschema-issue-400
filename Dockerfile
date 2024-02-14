FROM python:3.12.2-slim-bookworm

# https://github.com/python-jsonschema/check-jsonschema/releases
ARG CHECK_JSONSCHEMA_VERSION=0.28.0
RUN pip install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org check-jsonschema=="$CHECK_JSONSCHEMA_VERSION"

COPY invalid-file.json valid-file.json schema.json /data/

WORKDIR /data
