FROM python:3.7.4
LABEL  maintainer "nogayama <nogayama@jp.ibm.com>"
RUN pip install Flask
WORKDIR /app
COPY abcbank_webapp.py /app
CMD ["python", "/app/abcbank_webapp.py" ]
