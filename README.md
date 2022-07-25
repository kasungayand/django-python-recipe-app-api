# django-python-recipe-app-api
API Project

# Run test
docker-compose run -rm app sh -c "python manage.py test" 

# Run falke
docker-compose run -rm app sh -c "flake8"

# Run with a command
docker-compose run --rm app sh -c "python manage.py wait_for_db && flake8"