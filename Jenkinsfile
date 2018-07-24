pipeline {
	agent any

	tools {
        	maven 'mvn_3.5.4'
        	jdk 'jdk_8u181'
    	}

	stages {
        	stage('update-version') {
			steps {
				sh '''#!/bin/bash
					bash -x
					cd $WORKSPACE
					. $WORKSPACE/bitmovin-build-tools.sh
					bm-update-version
					bash +x
				'''
			}
        	}
        	stage('package') {
			steps {
				sh '''#!/bin/bash
					cd $WORKSPACE
					. $WORKSPACE/bitmovin-build-tools.sh
					bm-package
				'''
			}
        	}
        	stage('create-docker') {
			steps {
				sh '''#!/bin/bash
					cd $WORKSPACE
					. $WORKSPACE/bitmovin-build-tools.sh
					bm-create-docker
				'''
			}
        	}
        	stage('push-connntainer') {
			steps {
				sh '''#!/bin/bash
					cd $WORKSPACE
					. $WORKSPACE/bitmovin-build-tools.sh
					bm-push-connntainer
				'''
			}
        	}
	}
}
