#!/usr/bin/env runawk

#use "power_getopt.awk"

#.begin-str help
# power_getopt - program demonstrating a power of power_getopt.awk module
# usage: power_getopt [OPTIONS]
# OPTIONS:
#    -h|--help                  display this screen
#    -f|--flag                  flag
#       --long-flag             long flag only
#    -s                         short flag only
#    =F|--FLAG <value>          flag with value
#.end-str

BEGIN {
	print "f         --- " getarg("f")
	print "flag      --- " getarg("flag")
	print "long-flag --- " getarg("long-flag")
	print "s         --- " getarg("s")
	print "F         --- " getarg("F", "default1")
	print "FLAG      --- " getarg("FLAG", "default2")

	exit 0
}

