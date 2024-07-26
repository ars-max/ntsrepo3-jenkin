pipeline {
  agent any
  stages {
    stage('GIT SCM') {
      steps {
        git(url: 'https://github.com/ars-max/ntsrepo3-jenkin.git', branch: 'main', credentialsId: 'ars_max', poll: true)
      }
    }

    stage('terraform init') {
      steps {
        bat(script: 'terraform init', label: 'terraform')
      }
    }

    stage('deploy') {
      steps {
        bat(script: 'echo " build completd"', label: 'deploy')
      }
    }

  }
}