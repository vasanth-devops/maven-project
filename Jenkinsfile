node {
      stage 'checkout'

   git url: 'https://github.com/vasanth-devops/maven-project.git'
   sh 'git clean -fdx'

   def mvnHome = tool 'M3'

   stage 'build'
   sh "${mvnHome}/bin/mvn versions:set -DnewVersion=${env.BUILD_NUMBER}"
   sh "${mvnHome}/bin/mvn package"

   stage 'test'
   parallel 'test': {
     sh "${mvn}/bin/mvn test"
   }, 'verify': {
     sh "${mvn}/bin/mvn verify"
   }

   stage 'archive'
   archive './target/*.jar'
}


node {
    
   stage 'deploy Production'
   archive './target/*.jar'
}
