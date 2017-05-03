class CasesController < ApplicationController
  def new
    @case = Case.new
  end

  def create
    @case = Case.new(case_params)

    if @case.save
      redirect_to case_path(@case)
    else
      render 'new'
    end
  end

  def show
    @case = Case.find(params[:id])
  end

  private

  def case_params
    params.require(:case).permit(:guardian_id, :therapist_id, :teacher_id, :kid_id)
  end
end
