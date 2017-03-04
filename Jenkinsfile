#!groovy
node {
    def mvnHome
    
	
	stage 'preparation' {
		echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
		mvnHome = tool 'M3'
	   
	   
	}
	
	stage 'clean' {
		if (isUnit()) {
			sh "'${mvnHome}/bin/mvn' clean"
		}
	} 
	
	

} 