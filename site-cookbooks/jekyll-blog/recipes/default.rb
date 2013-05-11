application "jekyll-blog" do
  path "/var/www"
  owner "www-data"
  group "www-data"

  repository "https://github.com/dsdeiz/jekyll-blog.git"
  revision "master"
end

template "#{node['nginx']['dir']}/sites-available/jekyll-blog" do
  source "jekyll-blog.erb"
  owner "root"
  group "root"
  mode 00644
  notifies :reload, 'service[nginx]'
end

nginx_site "jekyll-blog"
