#!/usr/bin/env bash
pushd ~/.apollo
STATE_FILE=state
TIMEOUT=3

COMMAND=execute
TIME=$(date +%s)
SEQUENCE=$1

if [ -f ${STATE_FILE} ]; then
	PREV=$(cat ${STATE_FILE} | sed 's/[[:alpha:]]* //' | sed 's/ .*//')
	COMP=$((${PREV} + ${TIMEOUT}))
	if [ "${TIME}" -lt "${COMP}" ]; then
		COMMAND="$(cat ${STATE_FILE} | sed 's/\([[:alpha:]]*\).*/\1/')"
		SEQUENCE="$(cat ${STATE_FILE} | sed 's/[[:alpha:]]* [0-9]* //') ${1}"
	fi
	rm ${STATE_FILE}
fi

echo "${COMMAND} ${TIME} ${SEQUENCE}" >> ${STATE_FILE}
sh commands/${COMMAND} ${SEQUENCE}
popd
