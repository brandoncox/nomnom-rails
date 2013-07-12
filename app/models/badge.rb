class Badge
  include Mongoid::Document
  
  field :title, type: String
  field :description, type: String
  field :classification, type: String
  field :number_of_achievements_needed, type: Integer

  has_many :user_badges
  has_many :achievements
  
  scope :novice, where(classification: :novice)
  scope :experienced, where(classification: :experienced)
  scope :expert, where(classification: :expert)
  
  def self.is_badge_complete(user)
    require 'debugger'
    debugger
  end
end
