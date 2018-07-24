#!/bin/bash

if [[ -z $1 ]]; then 
	echo "Please type below command in order to load bitmovin build tools:"
	echo "	 source ./bitmovin-build-tools.sh"
	echo ""
	echo "Availabe bitmovin functions: "
	echo "	updateVersion"
	echo "	package"
	echo "	createDockerContainer"
	echo "	pushContainer"
fi

function updateVersion() {
	#getting version from git
	VERSION=$(git describe)
	VERSION=${VERSION#"v"}

	echo $VERSION
	
	#updating version in pom.xml
	sed -i "0,/<version>/{s/<version>.*/<version>$VERSION<version\/>/}" pom.xml
}
