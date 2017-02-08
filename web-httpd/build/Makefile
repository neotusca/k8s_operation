REGISTRY = 192.168.254.20:5000
IMAGE = httpd
TAG = 2.4.23-alpine

build:
	docker build --no-cache -f dockerfile.1 -t $(IMAGE):$(TAG)-final .


push:
	docker tag  $(IMAGE):$(TAG)-final  $(REGISTRY)/$(IMAGE):$(TAG)-final
	docker push $(REGISTRY)/$(IMAGE):$(TAG)-final

