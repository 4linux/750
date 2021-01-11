# -*- mode: ruby -*-
# vi: set ft=ruby :

vms = {

  'database' => {'memory' => '512', 'cpus' => 1, 'ip' => '103', 'box' => 'centos/7', 'provision' => 'database.sh'},
  'docker' => {'memory' => '1024', 'cpus' => 1, 'ip' => '105', 'box' => 'ubuntu/bionic64', 'provision' => 'docker.sh'},
 'lab-gamification'=> {'memory' => '2014', 'cpus' => 1, 'ip' => '110', 'box' => 'centos/7', 'provision' => 'lab-gamification.sh'},
  'ntp-log-server' => {'memory' => '1024', 'cpus' => 1, 'ip' => '104', 'box' => 'debian/stretch64', 'provision' => 'ntp.sh'},
  'security'=> {'memory' => '512', 'cpus' => 1, 'ip' => '101', 'box' => 'debian/stretch64', 'provision' => 'security.sh'},
  'storage' => {'memory' => '512', 'cpus' => 1, 'ip' => '102', 'box' => 'centos/7', 'provision' => 'storage.sh'}
}

Vagrant.configure('2') do |config|

  config.vm.box_check_update = false

  vms.each do |name, conf|
    config.vm.define "#{name}" do |my|
      my.vm.box = conf['box']
      my.vm.hostname = "#{name}.example.com"
      my.vm.network 'private_network', ip: "172.16.100.#{conf['ip']}"
      my.vm.provision 'shell', path: "provision/#{conf['provision']}"
      my.vm.provider 'virtualbox' do |vb|
        vb.memory = conf['memory']
        vb.cpus = conf['cpus']
      end
      my.vm.provider 'libvirt' do |lv|
        lv.memory = conf['memory']
        lv.cpus = conf['cpus']
        lv.cputopology :sockets => 1, :cores => conf['cpus'], :threads => '1'
      end
    end
  end
end
