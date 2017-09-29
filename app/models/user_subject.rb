class UserSubject < ApplicationRecord
  belongs_to :user
  belongs_to :subject

  has_many :tests

  after_create :new_history

  private

  def new_history
    History.create user_id: user_id, course_id: subject.course.id,
      subject_id: subject.id, content: "#{user.name} learn #{subject.name}"
  end
end
