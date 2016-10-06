class ProfilesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.create(address: params[:address],
                              description: params[:description],
                              user_id: params[:user_id],
                              phone: params[:phone],
                              name: params[:name],
                              email: params[:email])

    render 'new.html.erb'
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.fined(params[:id])
  end

  def update
    @profile = Profile.create(address: params[:address],
                              description: params[:description],
                              user_id: params[:user_id],
                              phone: params[:phone],
                              name: params[:name],
                              email: params[:email])

    flash[:success] = "Your profile has been updated."
    redirect_to "/profiles/#{@profile.id}"
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile = profile.delete

    flash[:warning] = "Your profile is deleted."
    redirect_to '/profiles'
  end
end
