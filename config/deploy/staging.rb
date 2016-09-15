set :stage, :staging
set :branch, :master
set :deploy_to, '/home/demo/devil'
set :log_level, :debug

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
role :app, %w{demo@104.131.68.232}
role :web, %w{demo@104.131.68.232}
role :db, %w{demo@104.131.68.232}
server '104.131.68.232', roles: %w{:web, :app, :db}, user: 'demo'

set :ssh_options, {
   #verbose: :debug,
   keys: %w(~/.ssh/id_rsa),
   auth_methods: %w(publickey)
}