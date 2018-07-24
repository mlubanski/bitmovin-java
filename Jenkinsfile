pipeline {
	agent any 

	stages {
        	stage('update-version') {
			steps {
				sh '''
					bash -x
					cd $WORKSPACE
					source $WORKSPACE/bitmovin-build-tools.sh
					bm-update-version
					bash +x
				'''
			}
        	}
        	stage('package') {
			steps {
				sh '''
					cd $WORKSPACE
					source $WORKSPACE/bitmovin-build-tools.sh
					bm-package
				'''
			}
        	}
        	stage('create-docker') {
			steps {
				sh '''
					cd $WORKSPACE
					source $WORKSPACE/bitmovin-build-tools.sh
					bm-create-docker
				'''
			}
        	}
        	stage('push-connntainer') {
			steps {
				sh '''
					cd $WORKSPACE
					source $WORKSPACE/bitmovin-build-tools.sh
					bm-push-connntainer
				'''
			}
        	}
	}
}
