pipeline
{
 agent any
 stages
 {
  stage('scm checkout') 
  { steps { git 'https://github.com/ravirajole/mavenproject.git'}  }

  stage('Compile the code') {  agent { label 'JAVA'}   //build the job clean workspace skip test scripts
   steps { withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_Home', maven: 'MVN_home', mavenSettingsConfig: '', traceability: true) 
	    { sh 'mvn compile'} }  

  stage('Test the code') {  agent { label 'JAVA'}   //build the job clean workspace skip test scripts
   steps { withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_Home', maven: 'MVN_home', mavenSettingsConfig: '', traceability: true) 
	    { sh 'mvn test'} } } 
        
  stage('build the code') {  agent { label 'JAVA'}   //build the job clean workspace skip test scripts
   steps { withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_Home', maven: 'MVN_home', mavenSettingsConfig: '', traceability: true) 
	    { sh 'mvn clean -B -DskipTests package'} }  
  }
//   stage('deploy to tomcat dev') { agent { label 'JAVA'} 
//    steps {sshagent(['DEVCICD']) {
// 	   sh 'scp -o StrictHostKeyChecking=no webapp/target/webapp.war ec2-user@172.31.27.153:/usr/share/tomcat/webapps'}}     
//   }
// }
}
