pipeline{
	
	agent {
		docker 'maven'
	}
 
	stages{
	
		stage('clone repository'){
			steps{
				checkout scm
			}
					
		}

		stage('Compile Source'){
			steps{
				echo 'Compiling...'
				sh 'mvn clean compile' 
				
			}	
		}
		stage('Build'){
			steps{
				echo 'building...'				
				sh 'mvn package'
				sh 'mvn install'
				archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true 
			}
		}

		stage('Build Image'){
			steps{
				docker build -t "dockerimage"
			}
		}

		stage('push image'){
			steps{
				echo 'image will be pushed'
			}
			
		}


	}	
	
}

