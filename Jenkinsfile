 pipeline {

     agent any
		
		stages {
			stage('Clone repo') {
				steps {
                git branch: 'main', credentialsId: 'CI_bitbucket_with_password', url: 'https://https://github.com/youssefA9/Docker_Jmeter.git'
            }
        }
        stage ('Build test Docker') {
            steps {
                script {
				bat 'docker build -t jmeter-docker ./'
				
                     }
            }
        }
      
        stage ('Run Jmeter Docker') {
            steps {
				script{
                bat 'docker run -t -v D:\\QIQ\\courses\\Run_From_CMD:/data jmeter-docker'
                
				}
			}
        }
		
		}
	}
