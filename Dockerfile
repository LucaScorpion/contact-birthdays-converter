FROM python:3-alpine

WORKDIR /app
COPY convert.sh ./
COPY vcf_to_ics.py ./

CMD ["/app/convert.sh" ]
