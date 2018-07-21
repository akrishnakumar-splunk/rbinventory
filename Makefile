conf ?= config.env
include $(conf)
export $(shell sed 's/=.*//' $(conf))

build: 
		docker build -t $(APP_NAME):latest .
run: 
		docker run --name $(CONT_NAME) -d -p $(PORT):$(PORT) $(APP_NAME)
up: build run
stop: 
		docker stop $(CONT_NAME); docker rm $(CONT_NAME)