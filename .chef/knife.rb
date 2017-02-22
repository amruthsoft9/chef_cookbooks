log_level                :info
log_location             STDOUT
node_name                'amruth'
client_key               '/root/chef-repo/.chef/amruth.pem'
validation_client_name   'chef-validator'
validation_key           '/etc/chef-server/chef-validator.pem'
chef_server_url          'https://ruchika-modi09051.mylabserver.com/organizations/chef/'
syntax_check_cache_path  '/root/chef-repo/.chef/syntax_check_cache'
cookbook_path            ["/root/chef-repo/cookbooks"]

