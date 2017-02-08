REGISTRY = 192.168.0.20:5000
IMAGE = bind
TAG = 9.10.4-P4

build:
	docker build --no-cache -f dockerfile.1 -t $(IMAGE):$(TAG) .
	docker run -d --name bind-sample $(IMAGE):$(TAG)
	docker cp bind-sample:/usr/local/$(IMAGE)-$(TAG)/sbin/named .

build2:
	docker build --no-cache -f dockerfile.2 -t $(IMAGE):$(TAG)-final .

push:
	docker tag  $(IMAGE):$(TAG)-final  $(REGISTRY)/$(IMAGE):$(TAG)-final
	docker push $(REGISTRY)/$(IMAGE):$(TAG)-final
	docker tag  $(IMAGE):$(TAG)-final  neotusca/bind-dev:$(TAG)-final
	docker push neotusca/bind-dev:$(TAG)-final
