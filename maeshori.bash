#!/usr/bin/bash

style_name="${1%.*}"
awk --re-interval -f utils/maeshori.awk $1 | awk --re-interval -f kaisetsu.awk > ${style_name}2.txt
