[![Python application test with Github Actions](https://github.com/daniel-duhnev/python-microservice-with-cd/actions/workflows/devops.yaml/badge.svg)](https://github.com/daniel-duhnev/python-microservice-with-cd/actions/workflows/devops.yaml)
[![AWS CodeBuild](https://codebuild.us-east-1.amazonaws.com/badges?uuid=eyJlbmNyeXB0ZWREYXRhIjoiSU4xSVR1b2VhTmp1QVVuWmkvbUN5Vlk1bk02TGt4QnJrUDQ5N1VtTEFXNTFsS2pWYjFBNlJSRXlpcGp2WkpBcDdhdWRTL3hLdTdxTHdJeGVxdHBUaHpVPSIsIml2UGFyYW1ldGVyU3BlYyI6IlUwK2wvT0M4bVU1VHlSd28iLCJtYXRlcmlhbFNldFNlcmlhbCI6MX0%3D&branch=main)

# Python Microservice with Continuous Deployment
A simple FastAPI-based microservice that provides Wikipedia search and summary endpoints.

## Endpoints

- **GET /**  
  Returns a welcome message.

- **GET /search/{value}**  
  Searches Wikipedia for the given value.

- **GET /wiki/{name}**  
  Retrieves a Wikipedia summary for the given name.

## Setup

### Run on AWS
Use the Makefile to run application - install, linting check, pytest, AWS deploy if instance exists.

```bash
make all
```

### Otherwise, run locally
```
python main.py
```
The API will be available at http://0.0.0.0:8080.


