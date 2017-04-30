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
      redirect_to guardian_kid_path(@guardian, @kid)
    else
      render 'new'
    end
  end

  def edit
    @kid = Kid.find(params[:id])
    @guardian = @kid.guardian
  end

  def update
    @kid = Kid.find(params[:id])

    if @kid.update_attributes(kid_params)
      redirect_to guardian_kid_path(@kid)
    else
      render 'edit'
    end
  end

  private

  def kid_params
    params.require(:kid).permit(:first_name, :last_name, :birthdate, :has_diagnosis, :guardian_id)
  end

end
