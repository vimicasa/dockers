FROM python:3.6.12-alpine

WORKDIR / 

RUN wget https://raw.githubusercontent.com/gwen001/pentest-tools/master/dnsexpire.py

RUN pip install tldextract pythonwhois colored

ENTRYPOINT ["python3", "/dnsexpire.py"]