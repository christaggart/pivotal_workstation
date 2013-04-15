include_recipe "pivotal_workstation::java"

dmg_package "PhpStorm" do
  source "http://download.jetbrains.com/webide/PhpStorm-5.0.4.dmg"
  checksum "825c03920212408b37da5c001517ae44037036d6a69be738eacf5d14e7cea80a"
  action :install
  owner WS_USER
end
