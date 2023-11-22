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
        access_key = credentials('jenkins_aws_access_key')
        secret_key = credentials('jenkins_aws_access_secret')
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
