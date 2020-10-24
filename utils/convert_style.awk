#!/bin/gawk
# awk --re-interval -f convert_style.awk

BEGIN{
    RS="@"
}
{
    split($1, sname, ":")
    gsub("^技能:|上限:", "\t", $2)
    gsub("^タイミング:", "\t", $3)
    gsub("^対象:|射程:", "\t", $4)
    gsub("^目標値:|対決:", "\t", $5)
    gsub("^解説:", "\t", $6)
    printf "%s\t%s%s%s%s%s%s\n", sname[1], sname[2] ,$2, $3, $4, $5, $6
}
