module AchievementsHelper
  @achievement_categories = [:physical, :nutritional, :mental]
  
  def self.organized_achievements(user)
    arr = []
    UserAchievement.where(user_id: user.id).each { |t| arr << t.achievement_id }
    achievements = {}
    @achievement_categories.each { |a| achievements[a] = Achievement.where(category: a).not_in(id: arr)}
    achievements
  end
  
end
