class User
  include Mongoid::Document
  field :username, type: String
  field :password, type: String
  field :lastname, type: String
  field :firstname, type: String
  field :rank, type: String
  field :role, type: String
  store_in collection: 'users'
end
