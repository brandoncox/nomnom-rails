class Role
  include Mongoid::Document
  
  field :title, type: String
  field :permissions, type: Array
  field :active, type: Boolean
  
  has_many :users
end
