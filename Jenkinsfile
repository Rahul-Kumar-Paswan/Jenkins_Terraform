pipeline {
  agent any
  
  stages{

    stage('Testing') {
      steps {
        echo " Testing stage 1 !!!!"
      }
    }

    stage('Provision Server') {
      environment {
        AWS_ACCESS_KEY_ID = credentials('aws_access_key')
        AWS_SECRET_ACCESS_KEY = credentials('aws_secret_key')
      }
      steps {
        script {
          sh "terraform init"
          sh "terraform plan"
          sh "terraform validate"
          sh "terraform apply -auto-approve"
        }
      }
    }

  }
}
