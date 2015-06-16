include_recipe 'apt'

mysql_service 'default' do
  initial_root_password node['rails_mysql']['root_password']
  action [:create, :start]
end

package 'mysql-client'
package 'libmysqlclient-dev'