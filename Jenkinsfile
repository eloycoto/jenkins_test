def power = { String branch ->
  if (branch == "origin/master" || branch == "master") {
    return '."23"'
  } else {
    return '."232"'
  }
}

pipeline {
    agent any
    environment {
        GG = power(env.GIT_BRANCH)
        JQ=sh(
		script: '''#!/bin/sh
			if [ "master" -eq "master" ]; then echo "."; else echo '.["post-processors"][0] |= map(select(.type != "vagrant-cloud"))'; fi
		''',
		returnStdout: true).trim()
    }

    stages {
        stage('Opensuse') {
            steps {
                sh 'printenv'
            }
        }
        stage('Ubuntu') {
            steps {
                sh 'printenv'
            }
        }
    }
}
