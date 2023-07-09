require 'sinatra'
require 'json'
require "sinatra/base"
require_relative './post.routes'
require_relative './blog.routes'

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
  get('/posts') { PostRouter.call(env) }
  post('/posts') { PostRouter.call(env) }
  get('/blogs') { BlogRouter.call(env) }
end

Routes.run!

