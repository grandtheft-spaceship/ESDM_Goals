class GuardiansController < ApplicationController
  def show
    @guardian = Guardian.find(params[:id])
  end

  def edit
    @guardian = Guardian.find(params[:id])
  end

  def update
    @guardian = Guardian.find(params[:id])

    if @guardian.update(guardian_params)
      redirect_to guardian_path(@guardian)
    else
      render 'edit'
    end
  end

  private

  def guardian_params
    params.require(:guardian).permit(:first_name, :last_name, :email)
  end
end
