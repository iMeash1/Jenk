pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Run Script') {
            steps {
                sh 'python3 check_number.py 42'
            }
        }
    }
    
    post {
        success {
            echo 'Script ran successfully!'
        }
        failure {
            echo 'Script failed!'
        }
    }
}
