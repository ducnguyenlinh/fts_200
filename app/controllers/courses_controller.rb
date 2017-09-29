class CoursesController < ApplicationController
  before_action :find_course

  attr_reader :course

  def home; end

  def index
    if current_user.present?
      @courses = Course.all
    else
      redirect_to user_session_path
    end
  end

  def find_course
    @course = Course.find_by id: params[:id]
  end
end
