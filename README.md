chef-nginx-php55-mysql
======================

クックブック
CentOS 6.5でのみ確認済みやで

$ vagrant box add centos65 https://github.com/2creatives/vagrant-centos/releases/download/v6.5.1/centos65-x86_64-20131205.box

$ vim Vagrantfile
The change in the centos65 'config.vm.box'
config.vm.boxをcentos65に変更する

$ vagrant ssh-config --host host_name >> ~/.ssh/config

knife solo prepare host_name

knife solo cook host_name
