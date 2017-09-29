class ReportsController < ApplicationController
  before_action :find_report, only: %i(show destroy update edit)
  before_action :find_course
  before_action :find_subject

  def index
    @reports = current_user.reports.page params[:page]
  end

  def new
    @report = current_user.reports.new course_id: params[:course_id]
  end

  def create
    report = current_user.reports.new report_params.merge(course_id: @course.id,
      time: Time.zone.now)
    if report.save
      redirect_to course_subject_path(@course, @subject)
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @report.update_attributes report_params
      flash[:success] = t "report.success"
      redirect_to course_subject_reports_path
    else
      render :course_subject_reports_path
    end
  end

  def destroy
    return unless @report.destroy

    redirect_to course_subject_reports_path(@course, @subject)
  end

  private

  def find_report
    @report = Report.find_by id: params[:id]
  end

  def find_course
    @course = Course.find_by id: params[:course_id]
  end

  def find_subject
    @subject = Subject.find_by id: params[:subject_id]
  end

  def report_params
    params.require(:report).permit :content, :time
  end
end
