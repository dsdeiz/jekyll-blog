template "#{node['nginx']['dir']}/sites-available/#{node['jekyll-blog']['hostname']}" do
  source "site.erb"
  owner "root"
  group "root"
  mode 00644
  notifies :reload, 'service[nginx]'
end

nginx_site "#{node['jekyll-blog']['hostname']}"

nginx_site "default" do
  enable false
end
