pipeline {
    parameters {
      string (name: 'NUM1', defaultValue: '23')
      string (name: 'NUM2', defaultValue: '23')
    }
    agent any
    triggers {
        pollSCM('H/5 * * * *')
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
                   ./script.sh ${NUM1} ${NUM2}
                """
            }
        }
    }
}
