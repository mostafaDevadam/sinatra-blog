require_relative './user.model'
class Blog
  include Mongoid::Document

  field :title, type: String
  field :body, type: String
  #field :user, type: User

  #has_one: user
  belongs_to :user

end
