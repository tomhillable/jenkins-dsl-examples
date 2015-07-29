#Ansible-Jenkins-Maven
======================

This ansible role creates a Jenkins server. 
Including: 

	- A jenkins job
	- Connection to github
	- Basic maven project
	- Basic JUnitTest configuration

##Requirements
--------------

No requirements

##Role variables
----------------

			---
			jenkins_hostname: localhost
			jenkins_jar_location: /opt/jenkins-cli.jar
			jenkins_plugins:
			  - git
			  - sonar
			  - ssh

			jenkins_owner: jenkins
			jenkins_group: jenkins


			# base installation directory for any Maven distribution
			maven_install_dir: '/opt/maven'

			# mvn binary gets symlinked into {{ maven_bin_path }}
			maven_bin_path: '/usr/local/bin'

			# filename of Maven redistributable package
			maven_redis_filename: "apache-maven-{{ maven_version }}-bin.tar.gz"

			# Maven version number
			maven_version: 3.2.2

			# Mirror where to dowload Maven redistributable package from
			maven_mirror: "http://archive.apache.org/dist/maven/binaries/"

			maven_redis_sha256sum: 'cce5914cf8797671fc6e10c4e034b453d854edf711cbc664b478d0f04934cb76'


			java_packages: 
			  - java-1.6.0-openjdk
			  - java-1.6.0-openjdk-devel

##Dependencies
--------------
No dependencies

##Example Playbook
------------------

			- hosts: JenkinsServer
			      roles:
			         - jenkins

Author
------

- GielDeBleser
(Base: https://github.com/geerlingguy/ansible-role-jenkins & https://github.com/silpion/ansible-maven) 
