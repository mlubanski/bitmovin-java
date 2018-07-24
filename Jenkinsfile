pipeline {
	agent any 

	stages {
        	stage('update-version') {
			steps {
				sh '''
					. bitmovin-build-tools.sh
					bm-update-version
				'''
			}
        	}
        	stage('package') {
			steps {
				sh '''
					. bitmovin-build-tools.sh
					bm-package
				'''
			}
        	}
        	stage('create-docker') {
			steps {
				sh '''
					. bitmovin-build-tools.sh
					bm-create-docker
				'''
			}
        	}
        	stage('push-connntainer') {
			steps {
				sh '''
					. bitmovin-build-tools.sh
					bm-push-connntainer
				'''
			}
        	}
	}
}
