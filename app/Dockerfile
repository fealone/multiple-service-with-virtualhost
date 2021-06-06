FROM python:3.7

LABEL maintainer "fealone <fealone@lonesec.com>"

# Prepare environments
RUN pip install poetry
COPY poetry.lock /var/www/app/poetry.lock
COPY pyproject.toml /var/www/app/pyproject.toml
WORKDIR /var/www/app
RUN poetry install

# Copy this project
COPY . /var/www/app

# Configration
EXPOSE 80

# Execute
ENTRYPOINT ["poetry"]
CMD ["run", "uvicorn", "main:app", "--host", "0.0.0.0", "--reload"]
