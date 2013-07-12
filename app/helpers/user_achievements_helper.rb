module UserAchievementsHelper
  @achievement_categories = [:physical, :nutritional, :mental]

  def self.achievements_by_state(user, complete = false)
    achievements = {}
    @achievement_categories.each { |ac| achievements[ac] = UserAchievement.where(user_id: user.id, complete: complete, 'user_achievement_info.category' => ac)}
    achievements
  end
end
