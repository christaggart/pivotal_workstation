include_recipe "pivotal_workstation::virtualbox"

dmg_package "Vagrant" do
  source "http://files.vagrantup.com/packages/64e360814c3ad960d810456add977fd4c7d47ce6/Vagrant.dmg"
  checksum "a4d910b74c1e855ff601c31bfc56d0aa931035498426d92914d576f0b77df6b8"
  action :install
  type "pkg"
  owner WS_USER
  package_id "com.vagrant.vagrant"
end
