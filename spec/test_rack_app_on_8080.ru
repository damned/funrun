require 'rack'
require 'rack/server'

Rack::Server.start :app => (proc do
  [200, { }, 'hello']
end)

