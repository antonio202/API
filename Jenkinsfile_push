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
				bat 'vagrant package --base API-Vagrant'
			}
		}
		stage('Push registry') {
			steps {
				withCredentials([usernamePassword(credentialsId: 'VagrantCloud', passwordVariable: 'vagrantCloudToken', usernameVariable: 'vagrantCloudUser')]) {
				bat 'echo "$vagrantCloudToken"'
				bat 'vagrant cloud auth login -t XDeL2Gjm6sv6qQ.atlasv1.p3Tykrro42rysf7VGFxjEPgYa2Qmu0EDm4gIXXUBZAWCVym3cPdjJCWPHn7e999ygnU'
				bat 'vagrant cloud publish antjos/api 1 antjos package.box -f'
				}
			}
		}
		stage('Initiate') {
			steps {
				bat 'vagrant up'
				bat 'vagrant provision'
			}	
		}
	}
}
