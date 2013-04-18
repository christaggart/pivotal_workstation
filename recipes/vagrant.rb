include_recipe "pivotal_workstation::virtualbox"

dmg_package "Vagrant" do
  source "http://files.vagrantup.com/packages/a7853fe7b7f08dbedbc934eb9230d33be6bf746f/Vagrant-1.2.1.dmg"
  checksum "27fe439c2e0521751e96dc2a45979a85272b5fc528ba012a0c9c0d527e7ac117"
  action :install
  type "pkg"
  owner WS_USER
  package_id "com.vagrant.vagrant"
end
