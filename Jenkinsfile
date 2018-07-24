pipeline {
	agent none 

	stages {
        	stage('update-version') {
			steps {
				sh '''
					source bitmovin-build-tools.sh
					bm-update-version
				'''
			}
        	}
        	stage('package') {
			steps {
				sh '''
					source bitmovin-build-tools.sh
					bm-package
				'''
			}
        	}
        	stage('create-docker') {
			steps {
				sh '''
					source bitmovin-build-tools.sh
					bm-create-docker
				'''
			}
        	}
        	stage('push-connntainer') {
			steps {
				sh '''
					source bitmovin-build-tools.sh
					bm-push-connntainer
				'''
			}
        	}
	}
}
