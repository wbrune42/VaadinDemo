node() {
	stage 'checkout' {
	   git url: 'git@github.com:wbrune42/VaadinDemo.git'
	}

    stage 'clean' {
		withMaven( maven: 'Maven3.3.9', mavenSettinsConfig: 'MyGlobalSettings', mavenLocalRepo: '~.m2/repository' ) {
			sh "mvn clean"	   
		}
    }

    stage 'compile' {
		withMaven( maven: 'Maven3.3.9', mavenSettinsConfig: 'MyGlobalSettings', mavenLocalRepo: '~.m2/repository' ) {
			sh "mvn compile"	   
		}
    }
    
	stage 'test' {
		withMaven( maven: 'Maven3.3.9', mavenSettinsConfig: 'MyGlobalSettings', mavenLocalRepo: '~.m2/repository' ) {
			sh "mvn test"	   
		}
    }
	
	stage 'package' {
		withMaven( maven: 'Maven3.3.9', mavenSettinsConfig: 'MyGlobalSettings', mavenLocalRepo: '~.m2/repository' ) {
			sh "mvn package"	   
		}
    }
	   
} 