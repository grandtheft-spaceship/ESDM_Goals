class KidsController < ApplicationController
  def index
    @guardian = Guardian.find(params[:guardian_id])
    @kids = @guardian.kids
  end

  def show
    @guardian = Guardian.find(params[:guardian_id])
    @kid = Kid.find_by(guardian_id: @guardian.id)
  end

  def new
    @guardian = Guardian.find(params[:guardian_id])
    @kid = @guardian.kids.new
  end

  def create
  end

end
