pipeline
{
 agent any
 stages
 {
  stage('scm checkout1')
  { steps { git 'https://github.com/ravirajole/mavenproject.git'}  }

  stage('compile the job')    //validate then compile
  { steps { withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_Home', maven: 'MVN_home', mavenSettingsConfig: '', traceability: true) 
	    { sh 'mvn compile'} }  
  }
  stage('execute unit test framwork')    //test the job
  { steps { withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_Home', maven: 'MVN_home', mavenSettingsConfig: '', traceability: true) 
	    { sh 'mvn test'} }  
  }
  stage('build the code')    //build the job
  { steps { withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_Home', maven: 'MVN_home', mavenSettingsConfig: '', traceability: true) 
	    { sh 'mvn package'} }  
  }
 }
}
