pipeline{
	
	agent {
		docker{
			image 'maven'
			args ‘-v /tmp/tmp -p 80:80’
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

