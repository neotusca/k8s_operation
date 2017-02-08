REGISTRY = 192.168.254.20:5000
IMAGE = tomcat
TAG = 8.5-alpine
#TAG = 8.0-alpine

build:
	docker build --no-cache -f dockerfile.1 -t $(IMAGE):$(TAG)-final .


push:
	docker tag  $(IMAGE):$(TAG)-final  $(REGISTRY)/$(IMAGE):$(TAG)-final
	docker push $(REGISTRY)/$(IMAGE):$(TAG)-final

