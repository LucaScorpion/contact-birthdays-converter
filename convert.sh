#!/usr/bin/env sh
set -eu

if [ -f './.env' ]
then
  echo 'Loading .env file'
  . './.env'
fi

if [ -z "$(ls -A "$BIRTHDAYS_DIR"/*.ics)" ]
then
  echo 'Birthdays directory is empty.'
else
  rm "$BIRTHDAYS_DIR"/*.ics
fi

for contact in "$CONTACTS_DIR"/*.vcf
do
  python vcf_to_ics.py -i "$contact" -o "$BIRTHDAYS_DIR/$(basename "$contact" .vcf).ics" -n 'Contact birthdays'
done

echo 'Done 🎂'
