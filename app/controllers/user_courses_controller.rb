class UserCoursesController < ApplicationController
  def create
    params_course = params[:user_course][:course_id]
    usercourse = UserCourse.find_by course_id: params_course

    if usercourse.blank?
      UserCourse.create!(course_id: params_course, user_id: current_user.id)
    end
    redirect_to course_subjects_path(params_course)
  end
end
