if ['solo', 'app', 'app_master'].include?(node[:instance_role])
  
  template "/data/nginx/servers/passenger_global_queue.conf" do
    source "passenger_global_queue.conf.erb"
    owner node[:owner_name]
    group node[:owner_name]
    mode 0644  
  end
end