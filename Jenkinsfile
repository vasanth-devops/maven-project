node {
      stage 'checkout'

   git url: 'https://github.com/vasanth-devops/maven-project.git'
   sh 'git clean -fdx'

   def mvnHome = tool 'my_Maven_3.6.0'

   stage 'build'
   sh "${mvnHome}/bin/mvn versions:set -DnewVersion=${env.BUILD_NUMBER}"
   sh "${mvnHome}/bin/mvn package"

   stage 'test'
   parallel 'test': {
     sh "${mvnHome}/bin/mvn test"
   }, 'verify': {
     sh "${mvnHome}/bin/mvn verify"
   }

   stage 'archiveArtifacts'
   archiveArtifacts artifacts '../target/*.jar'
}
