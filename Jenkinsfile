pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Test') {
            steps {
                echo 'Testing website files...'
                sh 'bash test_site.sh'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying to web server folder...'
                // Inside Docker, /var/jenkins_home is a safe place to "deploy" for this demo
                sh 'mkdir -p /var/jenkins_home/my_website'
                sh 'cp index.html /var/jenkins_home/my_website/index.html'
            }
        }
    }
    post {
        success {
            echo 'Website updated successfully!'
        }
    }
}