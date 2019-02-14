FROM python:3.7-alpine

LABEL "com.github.actions.name"="GitHub Action for cpplint"
LABEL "com.github.actions.description"="Run cpplint commands"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"

RUN apk add --no-cache bash
RUN pip install --upgrade pip
RUN pip install cpplint
RUN python --version ; pip --version

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
