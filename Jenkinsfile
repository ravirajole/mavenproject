pipeline
{
 agent any
 stages
 {
  stage('scm checkout1')
  { steps { git 'https://github.com/ravirajole/mavenproject.git'}  }


  stage('build the code')    //build the job clean workspace skip test scripts
  { steps { withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_Home', maven: 'MVN_home', mavenSettingsConfig: '', traceability: true) 
	    { sh 'mvn clean -B -DskipTests package'} }  
  }
 }
}
