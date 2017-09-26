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
                echo 'make check' 
            }
        }
        stage('Deploy') {
            steps {
                echo 'make publish'
            }
        }
    }
}