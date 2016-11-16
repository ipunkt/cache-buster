#/bin/sh

if [ -z "${TIME_BETWEEN_BUST}" ] ; then
	echo "Environment TIME_BETWEEN_BUST is missing"
	FAILED=true
fi

if [ -z "${BUST_URL}" ] ; then
	echo "Environment BUST_URL is missing"
	FAILED=true
fi

if [ ! -z "$FAILED" ] ; then
	sleep 30s
	exit 1
fi

while true ; do
	echo "Calling ${BUST_URL}"
	curl "${BUST_URL}" $*
	echo "Waiting ${TIME_BETWEEN_BUST} seconds"
	sleep "${TIME_BETWEEN_BUST}"s
done
