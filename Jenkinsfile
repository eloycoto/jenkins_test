pipeline {
    agent {
        label 'baremetal'
    }

    environment {
        PROJ_PATH = "src/github.com/eloycoto/jenkins_test"
    }

    stages {

        stage('Checkout') {
            steps {
                sh 'rm -rf src; mkdir -p src/github.com/eloycoto'
                sh 'ln -s $WORKSPACE src/github.com/eloycoto/jenkins_test'
                checkout scm
            }
        }
        stage('test') {
            environment {
                GOPATH="${WORKSPACE}"
                TESTDIR="${WORKSPACE}/${PROJ_PATH}"
            }
            steps {
                sh 'env'
                sh "cd ${TESTDIR}; ginkgo . -v"
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
