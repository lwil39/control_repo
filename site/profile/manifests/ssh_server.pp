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
      user => 'root',
      type => 'ssh-rsa',
      key => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC4LzIMx2G/jA7+qA66TS1CjYyH9t1xAWZbxwchCRKguB+8y6xWjX6v22fl1BGR+qqUR1yS1nS1HKBDpwtunntjmpGswEbwmnQvsPh5YS+yUV0UkhRLdHjW+s65fWlbROQ80n8+RDni3LGvd8gJQ17NggpzsBlpaS2W/XN1JpbyCIAqsNvzPhyJri1silGe5nAuAlObX3+nZzBcF5T6Z+uFbZxMqmhKg0VetFpJOj/S6kzulkAZoUDEa1wStuuUfnW9pz8TZFTVTlXv7so42pfbPPgtcEKsWBJRnpBYbFqGFea133lsefXbUSlQtgBoOfZwFb2VaJ7e2yJPZef+rWa7',
    }
}
