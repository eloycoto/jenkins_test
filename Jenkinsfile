
pipeline {
    agent any

    stages {
        stage('test') {
            steps {
                echo "My new test"
                echo "My second test"
                echo "My third test"
                sh './test.sh'
                TEST=123
            }
            post {
                always {
                    sh 'ls -1'
                    junit '*.xml'
                }
            }
        }
        stage('newTest') {
            steps {
                sh 'echo ${TEST}'
            }
        }
    }
}

