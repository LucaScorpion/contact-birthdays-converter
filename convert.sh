#!/usr/bin/env bash
set -euo pipefail
shopt -s nullglob

CONTACTS_DIR='./2935dded-446b-b8d8-8495-ded8537e5d64'
BIRTHDAYS_DIR='./birthdays'

rm "$BIRTHDAYS_DIR"/*.ics || echo 'Birthdays directory is empty.'

for contact in "$CONTACTS_DIR"/*.vcf
do
    python vcf_to_ics.py -i "$contact" -o "$BIRTHDAYS_DIR/$(basename "$contact" .vcf).ics" -n 'Contact birthdays'
done
