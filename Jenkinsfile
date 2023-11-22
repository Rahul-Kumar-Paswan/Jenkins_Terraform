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
        access_key = credentials('aws_access_key')
        secret_key = credentials('aws_secret_key')
        TF_VAR_env_prefix = 'prod'
        TF_VAR_region = "ap-south-1"
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
