class UserAchievement
  include Mongoid::Document
  include Mongoid::Timestamps 
  
  field :complete, type: Boolean, default: false
  
  belongs_to :user
  belongs_to :achievement
  embeds_one :user_achievement_info
  
end
