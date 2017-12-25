#
# Cookbook:: geo_minecraft
# Recipe:: default
#
# Copyright:: 2017, Lee Davis

# installs all dependencies
minecraft_depend 'dependencies' do
  install_all true
end

# installs the server and service files
bukkit_server 'lemur' do
  eula true
  action :create
end

# set properties for the server
server_properties 'lemur' do
  settings({
    :motd => 'This is the Fantasy Geographic Society Minecraft server',
    :enable_command_block => true,
    :difficulty => 2
  })
end

# update the bukkit.yml file
# bukkit_yml 'lemur' do
#   settings({
#     settings => {
#       :debug => true
#     }
#   })
# end

bukkit_plugin 'worldedit' do
  servers 'lemur'
  action :install
end

# starts the server
minecraft_service 'lemur' do
  commands 'say Server is now online!'
  action :start
end