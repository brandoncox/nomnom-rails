class AchievementsController < ApplicationController
    
  def index
    @achievement_groups = AchievementsHelper.organized_achievements(current_user)
    render 'list'
  end
  
  def start
    achievement = Achievement.find(params[:id])
    if !achievement.user_achievements.where(user_id: current_user.id).exists?
      ua = UserAchievement.new(achievement_id: params[:id])
      ua.create_user_achievement_info(title: achievement.title, description: achievement.description, category: achievement.category, difficulty: achievement.difficulty)
      current_user.user_achievements <<  ua
      
    else
      flash[:error] = "The achievement has already been started."
    end
    redirect_to achievement_url
    
  end
  
  def show
    @achievement = Achievement.find(params[:id])
    render json: @achievement
  end

end
