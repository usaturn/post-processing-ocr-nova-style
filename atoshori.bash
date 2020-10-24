#!/usr/bin/bash

style_name="${1%.*}"
awk --re-interval -f utils/convert_style.awk $1 > ${style_name}.tsv
