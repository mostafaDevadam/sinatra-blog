require 'sinatra'
require 'sinatra/base'
require 'json'
require_relative '../models/post.model'


class PostRouter < Sinatra::Base

  post '/posts' do
    content_type :json
    data = JSON.parse request.body.read
    post_ = Post.create!(data)#(title: data['title'])
    post_.to_json
  end

  get '/posts' do
    #content_type :json
    Post.all.to_json
  end

  get '/posts/:_id' do
    post_ = Post.find(params[:_id])
    post_.to_json
  end


end
