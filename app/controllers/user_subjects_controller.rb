class UserSubjectsController < ApplicationController
  def create
    UserSubject.create(user_id: current_user.id,
      subject_id: params[:user_subject][:subject_id], is_finish: false)
  end
end
