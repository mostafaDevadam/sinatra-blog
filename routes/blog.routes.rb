require 'sinatra'
require 'sinatra/base'
require 'json'

blogs = [{title: "First Post", body: "content of first post"}]


class BlogRouter < Sinatra::Base

  get '/blogs' do
    content_type :json
    blogs.to_json()
  end


end
