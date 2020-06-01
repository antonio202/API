pipeline {
	agent any
	stages {
		stage('Build') {
			steps {
			 sh 'vagrant box list'
			}
		}
		stage('Test') {
			steps {
				echo 'TEST'
				sh 'vagrant halt'
				sh 'vagrant package --base bionic64_default_1590938320383_21694'
			}
		}
		stage('Push registry') {
			steps {
				withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'vagrantCloudToken', usernameVariable: 'vagrantCloudUser')]) {
				sh 'vagrant cloud auth login -u $vagrantCloudHubUser -t $vagrantCloudToken'
				sh 'vagrant cloud publish antjos/api 1 antjos package.box'
				}
			}
		}
		stage('Initiate') {
			steps {
				sh 'vagrant up'
			}
		}
	}
}
