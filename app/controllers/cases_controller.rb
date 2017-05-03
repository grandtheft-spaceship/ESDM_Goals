class CasesController < ApplicationController
  def index
    @guardian = Guardian.find(params[:guardian_id])
    @cases = @guardian.cases.all
  end

  def new
    @guardian = Guardian.find(params[:guardian_id])
    @case = @guardian.cases.new
  end

  def create
    @guardian = Guardian.find(params[:guardian_id])
    @case = @guardian.cases.new(case_params)

    if @case.save
      redirect_to guardian_case_path(@guardian, @case)
    else
      render 'new'
    end
  end

  def show
    @guardian = Guardian.find(params[:guardian_id])
    @case = Case.find(params[:id])
  end

  private

  def case_params
    params.require(:case).permit(:guardian_id, :therapist_id, :teacher_id, :kid_id)
  end
end
