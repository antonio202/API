pipeline {
	agent any
	stages {
		stage('Build') {
			steps {
			bat 'whoami'
			bat 'vagrant up'
			}
		}
		stage('Test') {
			steps {
				echo 'TEST'
				bat 'vagrant halt'
			}
		}
		stage('Initiate') {
			steps {
				bat 'cd'
				bat 'vagrant provision'
			}	
		}
	}
}
