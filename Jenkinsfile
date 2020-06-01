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
				withCredentials([usernamePassword(credentialsId: 'GitHub', passwordVariable: 'vagrantCloudToken', usernameVariable: 'vagrantCloudUser')]) {
				bat 'vagrant cloud auth login -t x4itaCE2ImyByw.atlasv1.VdC7yhjg248eDCrYEJBaVeSNy6szgAZTDXYMHjvuZWdfyJpv7N5k9HTu4g9HAz20sq0'
				bat 'vagrant cloud publish antjos/api 1 antjos package.box -f'
				}
			}
		}
		stage('Initiate') {
			steps {
				bat 'vagrant up'
			}
		}
	}
}
