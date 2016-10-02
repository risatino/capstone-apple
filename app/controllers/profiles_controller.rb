class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.create(params[:address],
                              params[:phone],
                              params[:description],
                              params[:user_id],
                              params[:active_tickets])

    render 'new.html.erb'
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.fined(params[:id])
  end

  def update
    @profile = Profile.create(params[:address],
                              params[:phone],
                              params[:description],
                              params[:user_id],
                              params[:active_tickets])

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
