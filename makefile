setup:
	python3 -m venv ~/.make_ent

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=make_ent tests/*.py
	python -m pytest --nbval notebook.ipynb


lint:
	pylint --disable=R,C make_ent cli web

all: install lint test
