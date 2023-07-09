require 'sinatra'
require 'sinatra/base'
require 'json'


posts = [{title: "First Post", body: "content of first post"}]


class PostRouter < Sinatra:Base



  post '/posts' do
    content_type :json
    data = JSON.parse request.body.read
    post_ = Post.create!(data)#(title: data['title'])
    post_.to_json
  end



  get '/posts' do
    content_type :json
    Post.all.to_json
  end


end
