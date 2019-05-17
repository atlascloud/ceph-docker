 # We are using alpine:edge right now because that's the only release with updated ceph packages
FROM alpine:edge

# OSD ID - integer
ENV OSD_ID ""
# OSD UUID -  osd fsid in `ceph-volume lvm list` output
ENV OSD_UUID ""
# How much logs?
ENV DEBUG_LEVEL 1

# need to manually add py2-prettytable for now, working on an upstream fix for this
RUN apk -U add py2-prettytable ceph-osd

# This intentionally runs as root and then changes uid/gid
CMD /usr/sbin/ceph-volume lvm activate --no-systemd $OSD_ID $OSD_UUID && \
  /usr/bin/ceph-osd -i $OSD_ID --setuser ceph --setgroup ceph -d --debug_osd $DEBUG_LEVEL
