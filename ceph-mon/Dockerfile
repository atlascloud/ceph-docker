FROM alpine:edge

ENV MON_ID ""
ENV DEBUG_LEVEL 1

RUN apk -U add py2-prettytable ceph-mon

USER ceph:ceph

CMD /usr/bin/ceph-mon -i $MON_ID -d --debug_mon $DEBUG_LEVEL
