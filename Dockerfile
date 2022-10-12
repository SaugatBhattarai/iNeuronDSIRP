FROM python:3.9

LABEL maintainer="Saugat Bhattarai <bhattarai.saugat11@gmail.com>"

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY . /app

CMD [ "uvicorn", "app:app", "--host", "0.0.0.0"]
