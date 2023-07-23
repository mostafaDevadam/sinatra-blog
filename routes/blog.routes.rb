require 'sinatra'
require 'sinatra/base'
require 'json'
require_relative '../models/blog.model'
require_relative '../models/user.model'


class BlogRouter < Sinatra::Base

  blogs = [{title: "First Post", body: "content of first post"}]

  post '/blogs/:user_id' do |user_id|
    #content_type :json
    data = JSON.parse request.body.read
    #userId = params[:user_id].to_sym
    #puts userId
    #data.user = userId
    #blog_ = Blog.create!(data)
    #blog_.to_json
    # find user by id
    oid = user_id
    user_ = User.find(oid)
    #user_.to_json
    #
    #blog_ = Blog.create!(data)
    #
    user_.blogs.create!(data)
    #
    user_.attributes.merge(
      blogs: user_.blogs
    )
    #
    #blog = Blog.find(user_.blogs._id) #.where(user: User.find_by(_id: oid))
    {}.to_json


  end

  get '/blogs' do
    Blog.all.to_json
  end

  get '/blogs/:_id' do
    blog_ = Blog.find(params[:_id])
    blog_.to_json
  end


end
