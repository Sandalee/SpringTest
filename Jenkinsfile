node{
	
	def app
 
	
	
		stage('clone repository'){
			
				checkout scm
					
		}

		stage('Compile Source'){
		
				echo 'Compiling...'
				sh 'mvn clean compile' 
	
		}
		stage('Build'){
				echo 'building...'				
				sh 'mvn package'
				sh 'mvn install'
				archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true 
		}

		stage('Build Image'){

				def customImage = docker.build("my-image:${env.BUILD_ID}")

    				}
			
				
			
		}

	


		
	
}

