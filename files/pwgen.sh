#!/bin/bash
# script to run to generate a password and key for use with authentik
# because I'm not exactly sure how to do it in ansible
echo "PG_PASS=$(pwgen -s 40 1)" >> .env;
echo "AUTHENTIK_SECRET_KEY=$(pwgen -s 50 1)" >> .env;

# enable error reporting
echo "AUTHENTIK_ERROR_REPORTING__ENABLED=true" >> .env;

# SMTP Host Emails are sent to
echo "AUTHENTIK_EMAIL__HOST=localhost" >> .env;
echo "AUTHENTIK_EMAIL__PORT=25" >> .env;
# Optionally authenticate (don't add quotation marks to your password)
#AUTHENTIK_EMAIL__USERNAME=
#AUTHENTIK_EMAIL__PASSWORD=
# Use StartTLS
#AUTHENTIK_EMAIL__USE_TLS=false
# Use SSL
#AUTHENTIK_EMAIL__USE_SSL=false
#AUTHENTIK_EMAIL__TIMEOUT=10
# Email address authentik will send from, should have a correct @domain
#AUTHENTIK_EMAIL__FROM=authentik@localhost

echo "COMPOSE_PORT_HTTP=80" >> .env;
echo "COMPOSE_PORT_HTTPS=443" >> .env;

sudo docker compose pull && sudo docker compose up -d;
