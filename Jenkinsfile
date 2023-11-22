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
        AWS_ACCESS_KEY_KEY = credentials('aws_secret_key')
        TF_VAR_env_prefix = 'prod'
        TF_VAR_region = "ap-south-1"
      }
      steps {
        script {
        //   echo "AWS_ACCESS_KEY_ID: ${AWS_ACCESS_KEY_ID}"
        //   echo "AWS_ACCESS_KEY_SECRET: ${AWS_ACCESS_KEY_SECRET}"
          sh "terraform init"
          sh "terraform plan"
          sh "terraform validate"
          sh "terraform apply -auto-approve"
        }
      }
    }

  }
}
