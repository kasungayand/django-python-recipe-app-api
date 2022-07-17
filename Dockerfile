FROM python:3.9-alpine3.13
LABEL maintainer="kasungayand@gmail.com"

ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /tmp/requirements.txt
COPY ./requirements.dev.txt /tmp/requirements.dev.txt
COPY ./app /app
WORKDIR /app
EXPOSE 5000

ARG DEV=false
RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /tmp/requirements.txt && \
    # if [ $DEV = "true"]; \
        # then /py/bin/pip install -r /tmp/requirements.dev.txt; \
    # fi && \
    /py/bin/pip install -r /tmp/requirements.dev.txt && \
    rm -rf /tmp && \
    adduser \
        --disabled-password \
        --no-create-home \
        dockeruser

ENV PATH="/py/bin:$PATH"

# RUN chown dockeruser:dockeruser -R /app
# USER dockeruser
# RUN chmod 777 -R /app