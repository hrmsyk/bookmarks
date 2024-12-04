#!/usr/bin/env bash
set -e

OS=`uname -s`

BASENAME_LIST="airport_bus_time_table train_time_table"

#MARP="/usr/local/bin/marp"
#MARP="/home/hara/local/bin/marp"
MARP="/opt/homebrew/bin/marp"

CHROME="/Applications/Microsoft\\ Edge.app"
#CHROME="/usr/bin/microsoft-edge"

for BASENAME in ${BASENAME_LIST}; do
	MDFILE="${BASENAME}.md"
	PDFFILE="${BASENAME}.pdf"
	PPTXFILE="${BASENAME}.pptx"
#	CHROME_PATH=${CHROME} ${MARP} ${MDFILE} --html --allow-local-files --bespoke.osc true --bespoke.progress true --bespoke.transition true -o ${PDFFILE}
	CHROME_PATH=${CHROME} ${MARP} ${MDFILE} --html --theme ./A4-Doc.css --allow-local-files --bespoke.osc true --bespoke.progress true --bespoke.transition true -o ${PDFFILE}
### MacOS
#	if [ "${OS}" = "Darwin" ]; then
		open ${PDFFILE}
### Ubuntu 24.04LTS
#	else if [ "${OS}" = "Linux" ]; then
#		acroread ${PDFFILE}
### Ubuntu 24.04LTS on WSL
#	else if [ "${OS}" = "" ]; then
#		/mnt/c/Program\ Files/Adobe/Acrobat\ DC/Acrobat/Acrobat.exe ${PDFFILE}
#	fi
done

