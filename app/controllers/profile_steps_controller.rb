class ProfileStepsController < ApplicationController
  include Wicked::Wizard
  steps :basic, :contact, :social
  
  def show
    @user = current_user
    render_wizard 
  end
end
