class UserAchievementInfo
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  
  embedded_in :user_achievement
  
  field :title, type: String
  field :description, type: String
  field :category, type: String
  field :difficulty, type: String
  
end
