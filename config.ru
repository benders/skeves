require 'rubygems'
require 'appengine-rack'

AppEngine::Rack.configure_app(
  :application => "nic-benders-sinatra",
  :version => 2)

require 'appengine-apis/urlfetch'
Net::HTTP = AppEngine::URLFetch::HTTP
require 'app'

set :run, false
set :environment, :production
set :logging, true

run Sinatra::Application 
