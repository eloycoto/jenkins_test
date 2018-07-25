
pipeline {
    agent any

    stages {
        stage('test') {
            when {
                 environment name: 'GIT_BRANCH', value: 'origin/master'
            }
            steps {
                sh 'env'
                script {
                    build(job:"jenkins_test", wait:false)
                }

            }
            post {
                always {
                    sh 'ls -1'
                }
            }
        }
    }
}

