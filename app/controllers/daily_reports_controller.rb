class DailyReportsController < ApplicationController
  def index
    @guardian = Guardian.find(params[:guardian_id])
    @case = Case.find(params[:case_id])
    @daily_reports = @case.daily_reports.all
  end
end
