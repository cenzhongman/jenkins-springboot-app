pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-v maven-repository:/root/.m2 -p 8080:8080 -name jenkins-springboot-app'
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
        stage('Deliver') {
            steps {
                sh 'chmod 755 ./jenkins/deliver.sh'
                sh './jenkins/deliver.sh'
            }
        }
    }
}
