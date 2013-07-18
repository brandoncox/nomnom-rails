class Achievement < Entity

  field :title, type: String
  field :description, type: String
  field :weight, type: Integer
  field :category, type: Symbol
  field :difficulty, type: Symbol

  has_many :user_achievements
  has_and_belongs_to_many :groups
  belongs_to :badge

end
