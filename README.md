# contact-birhdays-converter

A VCF to ICS converter for creating contact birthday events from vCards.
Designed for usage with (but not limited to) [Radicale](https://radicale.org/v3.html).

The app is designed to run in Docker,
where it runs the conversion once on boot, and every hour.

## Running

```shell
docker run \
  -v '/radicale/data/birthdays=/data/birthdays' \
  -v '/radicale/data/contacts=/data/contacts' \
  ghcr.io/lucascorpion/contact-birthdays-converter:latest
```

## Configuration

The script can be configured via environment variables, or a `.env` file.

| Variable        | Default           | Description                                                                  |
|-----------------|-------------------|------------------------------------------------------------------------------|
| `BIRTHDAYS_DIR` | `/data/birthdays` | The directory where the resulting birthday events (`.ics`) should be stored. |
| `CONTACTS_DIR`  | `/data/contacts`  | The directory containing contact (`.vcf`) files.                             |

## Acknowledgements

The python script that actually does the conversion is based on https://github.com/FoxP/VCF-to-ICS.
