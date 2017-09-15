class CoursesController < ApplicationController
  def home; end

  def index
    @courses = Course.all
  end
end
