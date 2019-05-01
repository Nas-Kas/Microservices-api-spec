.PHONY: docs
docs:
	- docker build -t customerservice .
	- docker run -p 8080:8080 -v /Users/naskas/Desktop/dockerExercises/final-project/docs:/app/docs customerservice

