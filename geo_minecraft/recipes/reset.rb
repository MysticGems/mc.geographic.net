# Resets the server and service files
minecraft_server 'lemur' do
  eula true
  action :update
  reset_world true
end
