setup:
	python3 -m venv ~/.flask-ml-azure
	sudo -s
	source ~/.flask-ml-azure/bin/activate

	
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb


lint:
	pylint --disable=R,C,W1203 --fail-under 5 app.py

all: install lint test
