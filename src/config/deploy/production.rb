# Define stage
set :stage, :production

# Server info
server 'www.example.com', user: 'deploy', group: 'console', roles: %w(web app db)
set :server_name, 'www.example.com example.com'

# Deploy branch
set :branch, :master
