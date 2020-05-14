VOLUME=

case "$1" in
    nginx|certbot-etc) VOLUME=$1;;
    *) echo "Unknown volume"; exit 1 ;;
esac

docker run --rm -i \
  -v nginxconfig_$VOLUME:/target \
  busybox tar -xzC /target < $VOLUME-backup.tar.gz
