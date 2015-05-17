# Define stage
set :stage, :production

# Server info
server 'www.rgentpl.com', user: 'deploy', group: 'console', roles: %w{web app db}
set :server_name, 'www.rgentpl.com rgentpl.com'

# Deploy branch
set :branch, :master