class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    @user = User.find(params[:user_id])
    @profile = @user.build_profile(profile_params)
    if @profile.save
      flash[:success] = 'Profile Created'
      redirect_to @user
    else
      render 'new'
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :job_title,
                                    :phone_number, :contact_email, :description)
  end
end