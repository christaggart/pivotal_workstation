include_recipe "pivotal_workstation::virtualbox"

dmg_package "Vagrant" do
  source "http://files.vagrantup.com/packages/a7853fe7b7f08dbedbc934eb9230d33be6bf746f/Vagrant-1.2.2.dmg"
  checksum "1581552841e076043308f330a5b1130b455c604846116c54b5330bb17240c7ee"
  action :install
  type "pkg"
  owner WS_USER
  package_id "com.vagrant.vagrant"
end
