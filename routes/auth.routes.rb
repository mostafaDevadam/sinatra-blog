require 'sinatra'
require 'sinatra/base'
require 'json'
require_relative '../models/user.model'

class AuthRouter < Sinatra::Base

  post('/auth/register') do
    data = JSON.parse request.body.read
    user_ = User.create!(data)
    user_.to_json
  end

  post('/auth/login') do
    "auth login"
  end


end
