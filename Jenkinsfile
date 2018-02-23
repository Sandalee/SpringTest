pipeline{
	
	agent  any 
 
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
				sh 'mvn build'
			}
		}

	}	
	
}

