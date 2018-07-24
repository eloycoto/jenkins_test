
pipeline {
    agent any

    stages {
        stage('test') {
            when {
                 environment name: 'GIT_BRANCH', value: 'origin/master'
            }
            steps {
                echo "My new test"
                echo "My second test"
            }
            post {
                always {
                    sh 'ls -1'
                }
            }
        }
        stage('newTest') {
            steps {
                sh 'echo "New Test stage"'
            }
        }
    }
}

