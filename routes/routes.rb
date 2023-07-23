require 'sinatra'
require 'json'
require "sinatra/base"
require_relative './post.routes'
require_relative './blog.routes'
require_relative './auth.routes'


#
"""
class Foo < Sinatra::Base
  get('/foo') { 'foo' }
end

class Bar < Sinatra::Base
  get('/bar') { 'bar' }
end
"""

class Routes < Sinatra::Base
  before do
    content_type :json
  end
  ##
  get '/main' do
    #content_type :json
    { item: 'Red Dead Redemption 2', price: 19.79, status: 'Available'  }.to_json
  end
  # auth
  post('/auth/register') { AuthRouter.call(env) }
  post('/auth/login') { AuthRouter.call(env) }
  # posts
  post('/posts') { PostRouter.call(env) }
  get('/posts') { PostRouter.call(env) }
  get('/posts/:_id') { PostRouter.call(env) }

  # blogs
  post('/blogs/:user_id') { BlogRouter.call(env) }
  get('/blogs') { BlogRouter.call(env) }
  get('/blogs/:_id') { BlogRouter.call(env) }
  ##
  after do
    content_type :json
  end
  #
end

#Routes.run!

