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
minecraft_server 'lemur' do
  eula true
  action :create
end

# set properties for the server
server_properties 'lemur' do
  settings({
    :motd => 'Invisible lemurs! Invisible lemurs everywhere!',
    :enable_command_block => true,
    :gamemode => 1,
    :force_gammemode => true,
    :pvp => false,
    :max_players => 5,
    :generate_structures => true,
    :difficulty => 0
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

# bukkit_plugin 'worldedit' do
#   servers 'lemur'
#   action :install
# end

# starts the server
minecraft_service 'lemur' do
  commands 'say Server is now online!'
  action :start
end