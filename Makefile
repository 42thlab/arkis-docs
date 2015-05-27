.PHONY: re all clean build dev detach

PORT := $(if $(PORT), $(PORT), 8000)

project_name := arkis-docs
image_name   := arkis/$(project_name)

all: build detach

re: clean all

clean:
	-docker rm -f $(project_name)

build:
	docker build -t $(image_name) .

dev: clean build
	docker run \
	-p $(PORT):8000 \
	-v $(PWD):/$(project_name) \
	--name $(project_name) \
	-ti $(image_name) $(CMD)

detach:
	docker run -d -p $(PORT):8000 --name $(project_name) $(image_name)
