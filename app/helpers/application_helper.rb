module ApplicationHelper
  def learn? subject_id
    subject = current_user.subjects.find_by id: subject_id
    subject.present?
  end
end
