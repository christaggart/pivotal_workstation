ruby_block "Install Flint" do
  block do
    system("cd #{Chef::Config[:file_cache_path]}/ && curl -L 'http://giantcomet.com/files/flint/Flint-1.2.2_trial.zip' | gunzip | tar xf -")
    system("mv #{Chef::Config[:file_cache_path]}/Flint.app /Applications")
    system("chown -R #{WS_USER} /Applications/Flint.app")
  end
  not_if {File.exists?("/Applications/Flint.app")}
end

ruby_block "test that Flint install worked" do
  block do
    raise "Flint install failed!" if ! File.exists?("/Applications/Flint.app")
  end
end