pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-v maven-repository:/root/.m2 -p 8080:8080'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Deliver for development') {
            when {
                branch 'development'
            }
            steps {
                sh 'chmod 755 ./jenkins/deliver-development.sh'
                sh 'chmod 755 ./jenkins/kill.sh'
                sh './jenkins/deliver-development.sh'
                input message: 'Finished using this Program? (Click "Proceed" to continue)'
            }
        }
        stage('Deploy for production') {
            when {
                branch 'production'
            }
            steps {
                sh 'chmod 755 ./jenkins/deliver-production.sh'
                sh 'chmod 755 ./jenkins/kill.sh'
                sh './jenkins/deliver-production.sh'
                input message: 'Finished using this Program? (Click "Proceed" to continue)'
                sh './jenkins/kill.sh'
            }
        }
    }
}
