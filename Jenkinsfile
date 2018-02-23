pipeline{
	
	agent {
		docker{
			image 'openjdk:8-jdk-alpine'
		}
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
				archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true 
			}
		}


	}	
	
}

