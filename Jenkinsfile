pipeline {
	agent none 

	stages {
        	stage('bm-update-version') {
			steps {
				sh '''
					source bitmovin-build-tools.sh
					bm-update-version
				'''
			}
        	}
	}
}
