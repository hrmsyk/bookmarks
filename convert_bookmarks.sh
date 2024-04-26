#!/usr/bin/env bash

BASE="bookmarks"

#TEXTILEFILE="${BASE}.textile"
MDFILE="${BASE}.md"
HTMLFILE="${BASE}.html"

pandoc -s -f textile+smart ${MDFILE} -t html -o ${HTMLFILE}

