class profile::ssh_server {
      package {'openssh-server':
          ensure => present,
      }
      service {'sshd':
          ensure => 'running',
          enable => 'true',
      }
      ssh_authorized_key {'root@master.puppet.vm':
          ensure => present,
          user   => 'root',
          type   => 'ssh-rsa',
          key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDKs4w7qeO1Q0PfzwJrIZBEMRr3NmuT+D/8jWoNw71vAmIR37525heft+GMBtCcJ/JrHir0Uxbq7mv9NgWv7XF4fzXIk24YJhmn7VRTCsj/K4KQrLmMpOP7eFL0X6xaX33AZAYy7M54DCcIswaIUucSBg7WTd9S2hjAiY16w0RZpBmZzvTuP0on/ I6HH834TCNphXQCEO24y8LpSwGn1/OSWCVP1U5MmIiGFqHE7wyr/7nsxWD45VS9xSZIP+618Sqa4AXUvCO01F2129FgxXT/ov7u38STxbhKzGa+uyk0EY1I970BT3Bx0Fhf iKAU0jFmvAYHNeCC1f8qX689Ny1f',
          }
 }
