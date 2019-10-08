node {
      stage 'checkout'

   git url: 'https://github.com/vasanth-devops/maven-project.git'
   sh 'git clean -fdx'

   def mvnHome = tool 'my_maven_3.3.9'

   stage 'build'
   sh "${mvnHome}/bin/mvn versions:set -DnewVersion=${env.BUILD_NUMBER}"
   sh "${mvnHome}/bin/mvn package"
   sh "pwd"
   stage 'test'
   parallel 'test': {
     sh "${mvnHome}/bin/mvn test"
   }, 'verify': {
     sh "${mvnHome}/bin/mvn verify"
   }
   stage('Mvn Package'){
	 
	   
	   sh "${mvnHome} clean package"

  }
}
