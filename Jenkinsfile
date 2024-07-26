pipeline {
    agent any

    stages {
        stage('stage1') {
            steps {
                git branch: 'main', credentialsId: 'ars_max', url: 'https://github.com/ars-max/ntsrepo3-jenkin.git'
            }
        }
        stage('stage2') {
            steps {
                bat 'terraform init'
            }
        }
                stage('stage3') {
            steps {
                echo 'build completed'
            }
        }
    }    

}
