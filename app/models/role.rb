class Role < Entity
  
  field :title, type: String
  field :permissions, type: Array
  
  has_many :users
end