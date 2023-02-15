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
	python -m pytest -vv --cov=mylib --cov=main test_*.py
build:
	#build container
	docker build -t deploy-fastapi .
run:
	#run docker image
	#docker run -p 127.0.0.1:8080:8080 <image_id>
deploy:
	#deploy
	aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 821675674185.dkr.ecr.us-east-1.amazonaws.com
	docker build -t fastapi-wiki .
	docker tag fastapi-wiki:latest 821675674185.dkr.ecr.us-east-1.amazonaws.com/fastapi-wiki:latest
	docker push 821675674185.dkr.ecr.us-east-1.amazonaws.com/fastapi-wiki:latest
all: install lint test deploy