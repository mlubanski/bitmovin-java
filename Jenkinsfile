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
        stage('Example Test') {
           
            steps {
                echo 'Hello, JDK'
            }
        }
    }
}
