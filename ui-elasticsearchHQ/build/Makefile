#REGISTRY = 192.168.254.20:5000
IMAGE = elasticsearch-hq
TAG = 201801

build:
	docker build --no-cache -f Dockerfile   -t $(IMAGE):$(TAG) .


#push:
	#docker tag  $(IMAGE):$(TAG)-final  $(REGISTRY)/$(IMAGE):$(TAG)-final
	#docker push $(REGISTRY)/$(IMAGE):$(TAG)-final

