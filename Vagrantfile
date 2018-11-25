# vim: set ft=ruby:

Vagrant.configure('2') do |config|
  config.vm.provider 'virtualbox' do |v|
    v.gui    = true
    v.memory = 4096
    v.cpus   = 4
  end

  config.vm.provision 'ansible' do |ansible|
    ansible.playbook           = 'localhost.yml'
    ansible.compatibility_mode = '2.0'
    ansible.raw_ssh_args       = ['-o ForwardAgent=yes']
    ansible.extra_vars         = { 'download' => '/tmp' }
    ansible.verbose = true
  end

  config.vm.define 'ubuntu' do |ubuntu|
    ubuntu.vm.box = 'bento/ubuntu-18.04'

    ubuntu.vm.provider 'virtualbox' do |v|
      v.name = 'ubuntu-workstation'
    end
  end
end
