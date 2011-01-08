#
# Cookbook Name:: databaseyml
# Recipe:: default
#

if ['solo', 'app', 'app_master'].include?(node[:instance_role])
  node[:applications].each do |app_name,data|
    execute "use mysql2 adapter" do
      command "sed -i s/\"mysql$\"/\"mysql2\"/ /data/#{app_name}/shared/config/database.yml"
    end
  end  
end
