class UserAchievementsController < ApplicationController
  
  def show
    @user_achievement = UserAchievement.find(params[:id])
  end
  
  def complete
    ua = UserAchievement.find(params[:id])
    ua.complete = true
    ua.save
    redirect_to completed_user_achievements_url
  end
  
  def started
    @user_achievement_groups = UserAchievementsHelper.achievements_by_state(current_user, false)
    render 'list'
  end
  
  def completed
    @user_achievement_groups = UserAchievementsHelper.achievements_by_state(current_user, true)
    render 'list'
  end
end
