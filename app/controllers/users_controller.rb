class UsersController < ApplicationController
  def show
    user = User.find(params[:id])

    if user.is_guardian?
      @user = Guardian.find(params[:id])

      redirect_to guardian_path(@user)
    elsif user.is_therapist?
      @user = Therapist.find(params[:id])
    else
      @user = Teacher.find(params[:id])
    end
  end

end
