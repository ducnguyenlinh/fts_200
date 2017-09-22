class SubjectsController < ApplicationController
  before_action :authenticate_user!, only: :show
  before_action :find_course

  attr_reader :course

  def index
    @subjects = course.subjects.all
  end

  def show; end

  private

  def find_course
    @course = Course.find_by id: params[:course_id]

    return if course
    flash[:notice] = "Course is not exist!"
    redirect_to courses_path
  end
end
