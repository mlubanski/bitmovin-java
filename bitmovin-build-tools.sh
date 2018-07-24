#!/bin/bash

export CONTAINER_BASE_NAME="bitmovin-java"
export DOCKER_ID_USER="matik06"

echo ""
echo "===================================================================="
echo "Please type below command in order to load bitmovin build tools:"
echo "	 source ./bitmovin-build-tools.sh"
echo ""
echo "Availabe bitmovin functions: "
echo "	bm-update-version"
echo "	bm-package"
echo "	bm-create-docker"
echo "	bm-push-connntainer"
echo "===================================================================="
echo ""

function bit_movin_update_version() {
	#getting version from git
	VERSION=$(git describe)
	#remove prefix and suffiix so version follow x.y.z conention
	VERSION=${VERSION#"v"}
	export VERSION=${VERSION%%-*}
	
	#updating version in pom.xml
	sed -i "0,/<version>/{s/<version>.*/<version>$VERSION<\/version>/}" pom.xml
}

function bit_movin_package() {
	mvn clean package
}

function bit_movin_create_docker() {
	docker build -f Dockerfile -t $DOCKER_ID_USER/$CONTAINER_BASE_NAME:$VERSION .
	docker build -t <hub-user>/<repo-name>[:<tag>]
	docker create $CONTAINER_BASE_NAME:$VERSION
}

function bit_movin_push_container() {
	#docker login
	docker push $DOCKER_ID_USER/bitmovin-java:1.32.0
}

alias bm-update-version=bit_movin_update_version
alias bm-package=bit_movin_package
alias bm-create-docker=bit_movin_create_docker
alias bm-push-connntainer=bit_movin_push_container
