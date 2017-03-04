node() {
	stage 'checkout' {
	   // credentialsId from <jenkins-home>/credentials.xml
	   //git credentialsId: '7bda2bf1-c288-409a-b250-0e8180b6a072', url: 'ssh://git@github.com:wbrune42/VaadinDemo.git'
	   // checkout([$class: 'GitSCM', doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'jenkinsWithSSH', url: 'git@github.com:wbrune42/VaadinDemo.git']]])
	   // checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'jenkinsWithSSH', url: 'git@github.com:wbrune42/VaadinDemo.git']]])
	   checkout scm 
	   
	   // userRemoteConfigs: [[credentialsId: 'jenkinsWithSSH', url: 'git@github.com:wbrune42/VaadinDemo.git']]])
	   
	   // generated
	   // checkout([$class: 'GitSCM', 
	   //      branches: [[name: '*/master']], 
	   //      doGenerateSubmoduleConfigurations: false, 
	   //      extensions: [], 
	   //      submoduleCfg: [], 
	   //      userRemoteConfigs: [[credentialsId: 'jenkinsWithSSH', url: 'git@github.com:wbrune42/VaadinDemo.git']]])
	   
	}

    stage 'clean' {
		withMaven( maven: 'Maven3.3.9', mavenSettinsConfig: 'MyGlobalSettings', mavenLocalRepo: '~.m2/repository' ) {
			sh "mvn clean"	   
		}
    }

//    stage 'compile' {
//		withMaven( maven: 'Maven3.3.9', mavenSettinsConfig: 'MyGlobalSettings', mavenLocalRepo: '~.m2/repository' ) {
//			sh "mvn compile"	   
//		}
//    }
    
//	stage 'test' {
//		withMaven( maven: 'Maven3.3.9', mavenSettinsConfig: 'MyGlobalSettings', mavenLocalRepo: '~.m2/repository' ) {
//			sh "mvn test"	   
//		}
//    }
	
//	stage 'package' {
//		withMaven( maven: 'Maven3.3.9', mavenSettinsConfig: 'MyGlobalSettings', mavenLocalRepo: '~.m2/repository' ) {
//			sh "mvn package"	   
//		}
//    }
	   
} 