class DailyReportsController < ApplicationController
  def index
    @guardian = Guardian.find(params[:guardian_id])
    @case = Case.find(params[:case_id])
    @daily_reports = @case.daily_reports.all
  end

  def new
    @guardian = Guardian.find(params[:guardian_id])
    @case = Case.find(params[:case_id])
    @daily_report = @case.daily_reports.new
  end

  def create
    @guardian = Guardian.find(params[:guardian_id])
    @case = Case.find(params[:case_id])
    @daily_report = @case.daily_reports.new(daily_report_params)
    @daily_report.guardian_id = @guardian.id

    if @daily_report.save
      redirect_to guardian_case_daily_reports_path(@guardian, @case)
    else
      render 'new'
    end
  end

  private

  def daily_report_params
    params.require(:daily_report).permit(:body, :case_id, :guardian_id, :therapist_id, :teacher_id)
  end
end
