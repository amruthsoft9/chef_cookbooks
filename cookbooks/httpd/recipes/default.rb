#
# Cookbook Name:: httpd
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
package "httpd" do
 action :install 
end

node["httpd"]["sites"].each do |sitename, data|
 document_root="/content/sites/#{sitename}"

 directory document_root do
   mode "0755"
   recursive true

    end
template "/etc/httpd/conf.d/#{sitename}.conf" do 
    source "vhost.erb"
    mode "0644"
    variable(
           :document_root => document_root,
           :port => data["port"],
           :domain => data["domain"]
    )

    end 
end

 service 'httpd' do
 action [:enable, :start]
end


#template '/var/www/html/index.html' do
 #  source 'index.erb'
#end
