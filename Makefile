.PHONY: re all clean build dev detach

project_name := arkis-docs
image_name   := arkis/$(project_name)

all: build detach

re: clean all

clean:
	-docker rm -f $(project_name)

build:
	docker build -t $(image_name) .

dev: clean build
	docker run -ti -P -v $(PWD):/$(project_name) --name $(project_name) $(image_name)

detach:
	docker run -d -P --name $(project_name) $(image_name)
