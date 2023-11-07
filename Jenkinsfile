 pipeline {

     agent any
		
		stages {
			stage('Clone repo') {
				steps {
                git branch: 'main', credentialsId: 'none', url: 'https://https://github.com/youssefA9/Docker_Jmeter.git'
            }
        }
        stage ('Build test Docker') {
            steps {
                script {
				bat 'docker build -t task4 .'
				
                     }
            }
        }
      
        stage ('Run Jmeter Docker') {
            steps {
				script{
                bat 'docker run -v c:\ProgramData\Jenkins\.jenkins\workspace\results:/data task4'
                
				}
			}
        }
		
		}
	}
