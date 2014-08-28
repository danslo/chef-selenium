include_recipe 'selenium::default'

directory node['selenium']['server']['installpath']

major, minor, patch = node['selenium']['server']['version'].split('.')

remote_file File.join(node['selenium']['server']['installpath'], 'selenium-server-standalone.jar') do
  source "http://selenium-release.storage.googleapis.com/#{major}.#{minor}/selenium-server-standalone-#{major}.#{minor}.#{patch}.jar"
  action :create
  mode 0644
end
