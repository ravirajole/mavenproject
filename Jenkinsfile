pipeline
{
 agent any00
 stages
 {
  stage('scm checkout1')
  { steps { git 'https://github.com/ravirajole/mavenproject.git'}  }


  stage('build the code')    //build the job clean workspace skip test scripts
  { steps { withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_Home', maven: 'MVN_home', mavenSettingsConfig: '', traceability: true) 
	    { sh 'mvn clean -B -DskipTests package'} }  
  }
  stage('deploy to tomcat dev')
  { steps{sshagent(['DEVCICD']) {
	   sh 'scp -o StrictHostKeyChecking=no webapp/target/webapp.war ec2-user@172.31.27.153:/usr/share/tomcat/webapps'}}     
  }
 }
}
