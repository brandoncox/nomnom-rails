class Achievement
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :weight, type: Integer
  field :category, type: Symbol
  field :difficulty, type: Symbol

  has_many :user_achievements
  belongs_to :badge

end
