FROM alpine:edge

ENV MGR_ID ""
ENV DEBUG_LEVEL 1

# split these so we can cache the package that doesn't change often
# TODO revisit when we get closer to production
RUN apk -U add ceph-mgr
RUN apk add py2-six  py2-prettytable py2-openssl

USER ceph:ceph

CMD /usr/bin/ceph-mgr -i $MGR_ID -d --debug_ms $DEBUG_LEVEL
