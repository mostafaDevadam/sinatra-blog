require 'sinatra'
require 'mongoid'
require 'dotenv/load'
require 'jwt'
require 'json'
require_relative './routes/routes'
require 'date'
#
Mongoid.load!(File.join(File.dirname(__FILE__), 'config', 'mongoid.yml'))
#

### env
#host = ENV['db_host']
#name = ENV['db_name']
#puts name, host


class App < Sinatra::Base


  puts "App"
  Routes.run!
  run!
end
