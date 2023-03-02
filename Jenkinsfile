pipeline {
    parameters {
      string (name: 'NUM1', defaultValue: '0')
      string (name: 'NUM2', defaultValue: '0')
      string (name: 'NUM3', defaultValue: '0')
      string (name: 'NUM4', defaultValue: '0')
      string (name: 'NUM5', defaultValue: '0')
    }
    options {
      buildDiscarder(logRotator(numToKeepStr:'10'))
    }
    agent any
    triggers {
        pollSCM 'H/10 * * * *'
    }
    stages{
        stage('Pull Code'){
            steps{
                git branch: 'main', url: 'https://github.com/JenkinsDPGM/test_bash_code.git'
            }
        }
        stage('Run Code'){
            steps{
                sh """
                   chmod +x script.sh
                   ./script.sh ${NUM1} ${NUM2} ${NUM3} ${NUM4} ${NUM5}
                   echo 'You did it'
                """
            }
        }
    }
}
