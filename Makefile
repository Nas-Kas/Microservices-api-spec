.PHONY: docs
docs:
	- docker build -t customerservice .
	- docker run -p 8080:8080 -v $(PWD)/docs:/app/docs customerservice

