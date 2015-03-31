# Install mysql

mysql_service 'default' do
  port '3306'
  version node[:mysql_zend][:version]
  initial_root_password node[:mysql_zend][:password]
  action [:create, :start]
end
