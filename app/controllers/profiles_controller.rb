class ProfilesController < ApplicationController
before_action :set_profile, only: [:show, :update, :destroy]

  def index

  end

  def show

    redirect_to edit_profile_url if @profile.nil?

  end

  def new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully saved.' }

      else
        format.html { redirect_to @edit_profile_path, notice: 'Could not save profile' }
      end
    end

  end

  def edit
    @profile = Profile.find_by(user: current_user.id)

    @profile = Profile.new(user:current_user) if @profile.nil?
  end

  def update
    @profile = Profile.find_by(user: current_user.id)
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully saved.' }

      else
        format.html { redirect_to @edit_profile_path, notice: 'Could not save profile' }
      end
    end
  end

  def destroy
  end


  private

  def set_profile
    if params[:id]
      @profile = Profile.find(params[:id])
    else
      @profile = Profile.find_by(user: current_user)
    end
  end

  def profile_params
    params.require(:profile).permit(
      :avatar,
      :username,
      :first_name,
      :last_name,
      :bio
    )
  end
end
