pipeline {
	agent none 

	stages {
        	stage('bm-update-version') {
			sh '''
				source bitmovin-build-tools.sh
				bm-update-version
			'''
        	}
	}
}
