node{
	
	def app
 
	stages{
	
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
			
				app= docker.build("dockerimage")
			
		}

		stage('push image'){
			
				echo 'image will be pushed'
				docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials')
				app.push("${env.BUILD_NUMBER}")
            			app.push("latest")
			
		}


	}	
	
}

