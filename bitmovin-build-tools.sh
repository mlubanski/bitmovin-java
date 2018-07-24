#!/bin/bash

if [[ -z $1 ]]; then 
	echo ""
	echo "===================================================================="
	echo "Please type below command in order to load bitmovin build tools:"
	echo "	 source ./bitmovin-build-tools.sh"
	echo ""
	echo "Availabe bitmovin functions: "
	echo "	bm-update-version"
	echo "	bm-package"
	echo "	bm-create-docker"
	echo "	bm-create-docker"
	echo "===================================================================="
	echo ""
fi

function bit_movin_update_version() {
	#getting version from git
	VERSION=$(git describe)
	#remove prefix and suffiix so version follow x.y.z conention
	VERSION=${VERSION#"v"}
	VERSION=${VERSION%%-*}
	
	#updating version in pom.xml
	sed -i "0,/<version>/{s/<version>.*/<version>$VERSION<\/version>/}" pom.xml
}

function bit_movin_package() {
	mvn clean package
}

function bit_movin_create_docker() {
	echo "TBC"
}

function bit_movin_push_container() {
	echo "TBC"
}

alias bm-update-version=bit_movin_update_version
alias bm-package=bit_movin_package
alias bm-create-docker=bit_movin_create_docker
alias bm-create-docker=bit_movin_push_container
