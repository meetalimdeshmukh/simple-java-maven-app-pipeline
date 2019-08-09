pipeline{
    agent any
    
    options{
        skipStagesAfterUnstable()
    }

	stages{
	    stage("Build"){
	        steps{
	            sh "mvn clean package"
	        }
	    }
	    stage("Test"){
	        steps{
	            sh "mvn test"
	        }
	        post{
	            always{
	                junit "target/surefire-reports/*.xml"
	            }
	        }
	    }
	    stage("Deploy"){
	        steps{
	        	sh "./jenkins/scripts/deliver.sh"
	        }
	    }
	}
}
