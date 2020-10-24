#!/bin/gawk
# awk --re-interval -f kaisetsu.awk

BEGIN{
    RS="@"
}

NR!=1{
    kaisetsu=""
    for(i=5; i<=NF; i++){
        gsub(/\n/, "", $i)
        kaisetsu=kaisetsu$i
        }
        printf("@\n%s\n%s\n%s\n%s\n%s\n", $1, $2, $3, $4, kaisetsu)
}
