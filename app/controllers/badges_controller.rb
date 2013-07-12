class BadgesController < ApplicationController
  
  def index
    @grouped_badges = BadgesHelper.badges_by_classification
    render 'list'
  end
  
  def show
    @badge = Badge.find(params[:id])
  end
  
end
