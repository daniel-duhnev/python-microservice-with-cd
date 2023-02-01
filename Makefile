install:
	#install commands
	pip install --upgrade pip &&\
		pip install -r requirements.txt
format:
	#format code
	black *.py mylib/*.py
lint:
	#pylint command
	pylint --disable=R,C *.py mylib/*.py
test:
	#test
build:
	#build container
deploy:
	#deploy
all: install lint test deploy