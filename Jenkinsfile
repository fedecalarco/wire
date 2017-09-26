pipeline {
    agent any 

    stages {
        stage('Build') { 
            steps { 
                sh 'docker build -t wire-test .' 
            }
        }
        stage('Test'){
            steps {
                sh 'make check' 
            }
        }
        stage('Deploy') {
            steps {
                sh 'make publish'
            }
        }
    }
}