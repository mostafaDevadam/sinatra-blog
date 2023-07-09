require 'sinatra'
require 'json'
require "sinatra/base"
require 'date'

# Include all the gems listed in Gemfile
#require 'bundler'
#Bundler.require




class MyApp < Sinatra::Base
  get '/' do
    "Hello from MyApp 3!"
  end

  get '/about' do
    "general app"
  end




  #run! if __FILE__ == $0
end

class CustomApp < MyApp
  get '/about' do
    "custom app"
  end

end

MyApp.get '/nav' do

  "<a href='/about'>infos</a>"
end


#CustomApp.run!


#
"""
class Foo < Sinatra::Base
  get('/foo') { 'foo' }
end

class Bar < Sinatra::Base
  get('/bar') { 'bar' }
end

class Routes < Sinatra::Base
  get('/foo') { Foo.call(env) }
  get('/bar') { Bar.call(env) }
end

Routes.run!
"""
##





## show response in html page
get '/' do
  @message = 'Hello, World!'
  erb :index
end


















