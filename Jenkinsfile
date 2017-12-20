node {


   stage('Preparation') {
     checkout scm
     

   }
   stage('test') {
     
def mavencompile = docker.image('maven')

mavencompile.pull()

mavencompile.inside {

sh 'mvn clean install'

}
}

     
   
   stage('docker build/push') {
     
docker.withRegistry('https://index.docker.io/v1/', 'dockerhub') {
       def app = docker.build("https://github.com/chanpreet88/maven-proj.git:latest", '.').push()
     }
   }
}
