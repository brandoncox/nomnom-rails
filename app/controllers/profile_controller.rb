class ProfileController < ApplicationController
  def index
    render "index"
  end
  
  def show
    render json: current_user.profile
  end
  
  def edit
    render json: current_user.profile
  end
  
  def update
    render json: current_user.profile
  end
  
  def new
    p = Profile.new
    p.address_1 = 'new address 1'
    puts p
    render json: p
  end
  
  def create
    render json: current_user.create_profile(params)
  end
end