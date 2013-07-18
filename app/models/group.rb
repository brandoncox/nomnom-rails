class Group < Entity
  
  has_and_belongs_to_many :users
  has_and_belongs_to_many :roles
  has_and_belongs_to_many :achievements
  has_and_belongs_to_many :badges
  
  field :name, type: String
end
