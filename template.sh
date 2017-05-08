#!/bin/bash
# Author: Komsan Kamsamur <maprangzth@hotmail.com>
# Date: 2017-05-08
# 
####################################################

##### PATH OF SCRIPT RUNNING
SCRIPT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

##### BACKUP FUNCTION
function BACKUP() {

	BACKUP_PATH=${SCRIPT_PATH}/backup_
	[ -d ${BACKUP_PATH} ] || mkdir -p ${BACKUP_PATH}
	BACKUP_DATE=$(date +%Y%m%d)
	BACKUP_NAME=${BACKUP_PATH}/$(basename ${1}).${BACKUP_DATE}
	[ -f ${BACKUP_NAME} ] || cp -p ${1} ${BACKUP_NAME}

}
