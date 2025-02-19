FROM python:3-alpine

COPY convert.sh /root/
COPY vcf_to_ics.py /root/

RUN echo '0 * * * * /root/convert.sh' | crontab -
CMD ["crond", "-f", "-d", "8"]
