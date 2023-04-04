FROM python:3.9

RUN pip install pipenv

RUN mkdir /workdir

COPY Pipfile* /workdir

WORKDIR /workdir

RUN pipenv install

EXPOSE 8888

ENTRYPOINT ["pipenv", "run", "jupyter", "lab", "--ip", "0.0.0.0", "--no-browser", "--allow-root"]

