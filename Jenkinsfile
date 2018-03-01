pipeline {
    agent any

    stages {
        stage('test') {
            steps {
                echo "My new test"
            },
            post {
                always {
                    junit '*.xml'
                }
            }
        }
    }
}
