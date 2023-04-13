#!/bin/sh

# Install new requirements
echo "\n\tINSTALL NEW REQUIREMENTS\n"
pip install -r /requirements.txt

# Create static folder if not exists to avoid error
# mkdir -p static
# STATIC_DIR="$(pwd)/static/"
# if [! -d "$STATIC_DIR" ]; then
#   echo "CREATING STATIC FILES DIRETORY"
# fi

# Collect static files
echo "\n\tCOLLECT STATIC FILES\n"
python manage.py collectstatic --noinput

# Apply database migrations
echo "\n\tMAKING MIGRATIONS\n"
python manage.py makemigrations

echo "\n\tAPPLY DATABASE MIGRATIONS\n"
python manage.py migrate

# if [ ${DEBUG} == True ]
# then
#     # Running Tests
#     echo "RUNING TESTS"
#     pytest
#     #TODO : stop database test after tests
# fi

# Start server
echo "\n\tSTARTING SERVER\n"
python manage.py runserver 0.0.0.0:8000