IMAGE = pdns
TAG = 4.0.3

build:
	#./get_config.sh 1> get_config.sh.ok 2> get_config.sh.err
	docker build --no-cache -f dockerfile.1 --rm=false -t $(IMAGE):$(TAG) .
	docker run -d --name pdns-sample $(IMAGE):$(TAG)
	mkdir extracted_binary
	docker cp pdns-sample:/usr/sbin/pdns_recursor           extracted_binary/.
	docker cp pdns-sample:/usr/bin/rec_control              extracted_binary/.
	docker cp pdns-sample:/etc/init.d/pdns-recursor         extracted_binary/.
	docker cp pdns-sample:/etc/pdns-recursor/recursor.conf  extracted_binary/.

build2:
	docker build --no-cache -f dockerfile.2 -t $(IMAGE):$(TAG)-final .

push:
	docker tag  $(IMAGE):$(TAG)-final  192.168.254.189:5000/$(IMAGE):$(TAG)-final
	docker push 192.168.254.189:5000/$(IMAGE):$(TAG)-final
