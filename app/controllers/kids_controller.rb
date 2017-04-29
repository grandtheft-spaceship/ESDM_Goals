class KidsController < ApplicationController
  def index
    @guardian = Guardian.find(params[:guardian_id])
    @kids = @guardian.kids
  end

  def new
    @guardian = Guardian.find(params[:guardian_id])
    @kid = @guardian.kids.new
  end
end
