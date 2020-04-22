class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCUxgi+6RehGkzHcrm1rXsD4dMe5KRuLCtDMtcBE32ls3j3dbuZocvr4NEXUIaHC3kxho9pkOxH/9fMxN/q/d3Yrw7GhQT70XU1KzCe1Ne4sjTcvy3iOaWzRGmu4plQbb3y4AViCtElL0E+SljOOwFDTr0b3+Mo/UF4pNEDBjW8DdI71laLfAcnQNc64FQTT1r3lRF351BGm9hsB7xqCw2FhwVKiq1v3L+UfPfpXmAj/PxbiMa9390l5NscOEHik/BDV+8y3McgR46ib2qss+PI3X82O4PYzLw9xISTy7G3lsPjCP+YGQnkbW2M8h0eQoR08boGfnHNqBJwvEHJXD2H',
	}  
}
