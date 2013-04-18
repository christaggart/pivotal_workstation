include_recipe "pivotal_workstation::virtualbox"

dmg_package "Vagrant" do
  source "http://files.vagrantup.com/packages/1e2d92d0ed73e28346bb74345c8e353bcab415fb/Vagrant.dmg"
  checksum "a4d910b74c1e855ff601c31bfc56d0aa931035498426d92914d576f0b77df6b8"
  action :install
  type "pkg"
  owner WS_USER
  package_id "com.vagrant.vagrant"
end
