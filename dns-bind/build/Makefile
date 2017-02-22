REGISTRY = 192.168.254.20:5000
IMAGE = bind
TAG = 9.10.4-P5
POSTFIX = final.2

build:
	docker build --no-cache -f dockerfile.1 -t $(IMAGE):$(TAG) .
	docker run -d --name bind-sample $(IMAGE):$(TAG)
	docker cp bind-sample:/usr/local/$(IMAGE)-$(TAG)/sbin/named .
	docker cp bind-sample:/usr/local/$(IMAGE)-$(TAG)/sbin/rndc .
	docker cp bind-sample:/etc/rndc.* .

build2:
	docker build --no-cache -f dockerfile.2 -t $(IMAGE):$(TAG)-$(POSTFIX) .

push:
	docker tag  $(IMAGE):$(TAG)-$(POSTFIX)      $(REGISTRY)/$(IMAGE):$(TAG)-$(POSTFIX)
	docker push                                 $(REGISTRY)/$(IMAGE):$(TAG)-$(POSTFIX)
	docker tag  $(IMAGE):$(TAG)-$(POSTFIX)      neotusca/bind-dev:$(TAG)-$(POSTFIX)
	docker push                                 neotusca/bind-dev:$(TAG)-$(POSTFIX)
	docker tag  $(IMAGE):$(TAG)-$(POSTFIX)      1.214.69.63:5000/ucim1.0/$(IMAGE):$(TAG)-$(POSTFIX)
	docker push                                 1.214.69.63:5000/ucim1.0/$(IMAGE):$(TAG)-$(POSTFIX)


