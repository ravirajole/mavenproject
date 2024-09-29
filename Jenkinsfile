pipeline
{
 agent any
 stages
 {
  stage('scm checkout')
  { steps {LABEL: JAVA { git 'https://github.com/ravirajole/mavenproject.git'}  }}


  stage('build the code')    //build the job clean workspace skip test scripts
  { steps {LABEL: JAVA { withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_Home', maven: 'MVN_home', mavenSettingsConfig: '', traceability: true) 
	    { sh 'mvn clean -B -DskipTests package'} }  
  }}
  stage('deploy to tomcat dev')
  { steps{LABEL: JAVA {sshagent(['DEVCICD']) {
	   sh 'scp -o StrictHostKeyChecking=no webapp/target/webapp.war ec2-user@172.31.27.153:/usr/share/tomcat/webapps'}}     
  } }
 }
}
