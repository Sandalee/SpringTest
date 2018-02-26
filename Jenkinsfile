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

				docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {

        				def customImage = docker.build("my-image:${env.BUILD_ID}")

        				/* Push the container to the custom Registry */

        				customImage.push()
    				}
			
				
			
		}

	


		
	
}

