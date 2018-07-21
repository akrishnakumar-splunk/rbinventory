build: 
		docker build -t rbinventory:latest .
run: 
		docker run --name rbinventory_container -d -p 5000:5000 rbinventory
up: build run
stop: 
		docker stop rbinventory_container; docker rm rbinventory_container