class ProfileStepsController < ApplicationController
  include Wicked::Wizard
  steps :basic, :contact, :social, presence: true
  
  def new
    @profile = Profile.new
  end
  
  def show
    current_user.profile = Profile.new
    @profile = current_user.profile
    render_wizard 
  end
  
  def update
    @profile = current_user.create_profile(params[:profile])
    render_wizard @profile
  end
end
