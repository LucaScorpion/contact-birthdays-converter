#!/usr/bin/env bash
set -euo pipefail
shopt -s nullglob

if [ -f '.env' ]
then
  echo 'Loading .env file'
  source .env
fi

rm "$BIRTHDAYS_DIR"/*.ics || echo 'Birthdays directory is empty.'

for contact in "$CONTACTS_DIR"/*.vcf
do
  python vcf_to_ics.py -i "$contact" -o "$BIRTHDAYS_DIR/$(basename "$contact" .vcf).ics" -n 'Contact birthdays'
done
