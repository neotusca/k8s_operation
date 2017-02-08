REGISTRY = 192.168.254.20:5000
IMAGE = jboss/wildfly
TAG = 8.2.1.Final

build:
	docker build --no-cache -f dockerfile.1 -t $(IMAGE):$(TAG)-uc .


push:
	docker tag  $(IMAGE):$(TAG)-uc  $(REGISTRY)/$(IMAGE):$(TAG)-uc
	docker push $(REGISTRY)/$(IMAGE):$(TAG)-uc

