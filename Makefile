ceph_vers := 14.2.0
release_vers := 0

all: mon osd
	# build everything

mon:
	cd ceph-mon && docker build --pull --tag atlascloud/ceph-mon:$(ceph_vers).$(release_vers) .

mgr:
	cd ceph-mgr && docker build --pull --tag atlascloud/ceph-mgr:$(ceph_vers).$(release_vers) .

osd:
	cd ceph-osd && docker build --pull --tag atlascloud/ceph-osd:$(ceph_vers).$(release_vers) .

push-mon:
	docker push atlascloud/ceph-mon:$(ceph_vers).$(release_vers)

push-mgr:
	docker push atlascloud/ceph-mgr:$(ceph_vers).$(release_vers)

push-osd:
	docker push atlascloud/ceph-osd:$(ceph_vers).$(release_vers)
