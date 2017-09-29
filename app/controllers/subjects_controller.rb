class SubjectsController < ApplicationController
  before_action :authenticate_user!, only: :show

  attr_reader :subject, :course

  def index
    @course = Course.find_by id: params[:course_id]
    @subjects = course.subjects.all
  end

  def show
    find_subject
  end

  private

  def find_subject
    @subject = Subject.find_by id: params[:id]
    @course = Course.find_by id: params[:course_id]

    return if subject

    flash[:danger] = t "subject.error"
    redirect_to root_path
  end
end
