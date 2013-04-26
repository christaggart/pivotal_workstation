unless File.exists?(node["gasmask_app_path"])

  remote_file "#{Chef::Config[:file_cache_path]}/gas_mask_0.7.zip" do
    source node["gasmask_download_uri"]
    owner WS_USER
  end

  execute "unzip gasmask" do
    command "unzip #{Chef::Config[:file_cache_path]}/gas_mask_0.7.zip -d #{Chef::Config[:file_cache_path]}/"
    user WS_USER
  end

  execute "copy gasmask to /Applications" do
    command "mv #{Chef::Config[:file_cache_path]}/Gas Mask.app #{Regexp.escape(node["gasmask_app_path"])}"
    user WS_USER
    group "admin"
  end

  ruby_block "test to see if GasMask.app was installed" do
    block do
      raise "Gas Mask.app was not installed" unless File.exists?(node["gasmask_app_path"])
    end
  end

end