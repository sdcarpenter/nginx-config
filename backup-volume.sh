VOLUME=

case "$1" in
    nginx|certbot-etc) VOLUME=$1;;
    *) echo "Unknown volume"; exit 1 ;;
esac

docker run --rm \
    -v nginxconfig_$VOLUME:/source:ro \
    busybox tar -czC /source . > $VOLUME-backup.tar.gz
