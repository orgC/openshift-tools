
cat <<EOF > /etc/sysconfig/docker-storage-setup
DEVS=/dev/sdb
VG=docker-vg
STORAGE_DRIVER=overlay2
EOF

mkdir -p /etc/docker/

echo '{  "live-restore": true }' > /etc/docker/daemon.json
