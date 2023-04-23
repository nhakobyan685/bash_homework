#!/bin/bash


####################
#---write-result---#
####################
echo $1 $2
function ls_dir(){
	echo ls $1 > $2
}


###################
#-----checker-----#
###################
function checker(){
	if [[ ! -d $1 ]]; then
		echo "Not found Directory"
		exit 1
	fi
	if [[ ! -f $2 ]]; then
		echo "Not found file"
	fi
}


#-----call-function-------#
checker $1 $2
ls_dir $1 $2
Write to Tatevik Avetisyan


