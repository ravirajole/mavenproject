pipeline
{
 agent any
 stages
 {
  stage('scm checkout')
  { steps { git 'https://github.com/ravirajole/mavenproject.git'}  }

  stage('validate')
  { steps { withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_Home', maven: 'MVN_home', mavenSettingsConfig: '', traceability: true) 
	    { sh 'mvn validate'}
   	  }  
   }
 }
}
