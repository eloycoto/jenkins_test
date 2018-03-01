pipeline {
    agent any

    stages {
        stage('test') {
            steps {
                echo "My new test"
                echo "My second test"
                echo "My third test"
                sh './test.sh'
            }
            post {
                always {
                    sh 'ls -1'
                    junit '*.xml'
                }
            }
        }
    }
}
