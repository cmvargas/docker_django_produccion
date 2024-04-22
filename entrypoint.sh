#!/bin/sh

echo 'Running collecstatic...'
python manage.py collectstatic --no-input --settings=config.settings.production

echo 'Applying migrations...'
python manage.py migrate

echo 'Running server...'
gunicorn config.wsgi:application --bind 0.0.0.0:8000