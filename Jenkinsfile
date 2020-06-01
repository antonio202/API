pipeline {
	agent any
	stages {
		stage('Build') {
			steps {
			 bat 'vagrant up'
			}
		}
		stage('Test') {
			steps {
				echo 'TEST'
				bat 'vagrant halt'
				bat 'vagrant package --base bionic64_default_1590938320383_21694'
			}
		}
		stage('Push registry') {
			steps {
				withCredentials([usernamePassword(credentialsId: 'GitHub', passwordVariable: 'vagrantCloudToken', usernameVariable: 'vagrantCloudUser')]) {
				bat 'vagrant cloud auth login -t x4itaCE2ImyByw.atlasv1.VdC7yhjg248eDCrYEJBaVeSNy6szgAZTDXYMHjvuZWdfyJpv7N5k9HTu4g9HAz20sq0'
				bat 'vagrant cloud publish antjos/api 1 antjos package.box'
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
