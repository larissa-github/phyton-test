FROM python
# FROM python:3.8.5.-slim - geht nicht. Dann will der Docker eine Manifestdatei haben. Diese kenne ich nicht.

WORKDIR /opt

COPY target/hello1.py /opt/hello1.py

EXPOSE 5000

CMD ["python", "/opt/hello1.py"]
