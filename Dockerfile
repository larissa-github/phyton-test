FROM python:3.8.5
# FROM python:3.8.5.-slim - geht nicht. Dann will der Docker eine Manifestdatei haben. Diese kenne ich nicht.

WORKDIR /opt

COPY requirements.txt /opt/requirements.txt

RUN pip install -r /opt/requirements.txt

COPY requirements.txt /opt/requirements.txt

# RUN true

# COPY run_tests.sh /opt/run_tests.sh

EXPOSE 5000

RUN true

CMD ["python", "/opt/hello1.py"]
# RUN python hello1.py falsch
