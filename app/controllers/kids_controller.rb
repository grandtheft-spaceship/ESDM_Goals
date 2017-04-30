class KidsController < ApplicationController
  def index
    @guardian = Guardian.find(params[:guardian_id])
    @kids = @guardian.kids
  end

  def show
    @kid = Kid.find(params[:id])
  end

  def new
    @guardian = Guardian.find(params[:guardian_id])
    @kid = @guardian.kids.new
  end

  def create
    @guardian = Guardian.find(params[:guardian_id])
    @kid = @guardian.kids.new(kid_params)

    if @kid.save
      redirect_to guardian_path(@guardian)
    else
      render 'new'
    end
  end

  private

  def kid_params
    params.require(:kid).permit(:first_name, :last_name, :birthdate, :has_diagnosis, :guardian_id)
  end

end
