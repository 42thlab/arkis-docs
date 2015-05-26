FROM python:3.4

RUN pip install mkdocs

ENV APP /arkis-docs

COPY . /arkis-docs

EXPOSE 8000

WORKDIR $APP

CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]
