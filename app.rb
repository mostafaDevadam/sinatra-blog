require 'sinatra'
require 'mongoid'
require 'dotenv/load'
require 'jwt'
require 'json'
require_relative './routes/routes'

#
require_relative 'models/post.model'
#

#
Mongoid.load!(File.join(File.dirname(__FILE__), 'config', 'mongoid.yml'))
#

### env
host = ENV['db_host']
name = ENV['db_name']
puts name, host


###
# routes


#
get '/' do
# here we specify the content type to respond with
  content_type :json

  { item: 'Red Dead Redemption 2', price: 19.79, status: 'Available'  }.to_json
end
