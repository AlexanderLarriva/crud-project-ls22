start:
	poetry run flask --app crud_project_ls22.app:app run

start-debug:
	poetry run flask --app crud_project_ls22.app --debug run --port 10000

test:
	poetry run flake8 .
	poetry run pytest

start-guni:
	poetry run gunicorn --workers=4 --bind=127.0.0.1:10000 crud_project_ls22.app:app