# syntax=docker/dockerfile:1

FROM python:3.10.0

WORKDIR /api

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY api/ .

CMD ["gunicorn", "--workers=1", "--bind", "0.0.0.0:5000", "spotify:app"]
