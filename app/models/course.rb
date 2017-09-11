class Course < ApplicationRecord
  has_many :users, through: :user_courses
  has_many :reports
  has_many :histories
  has_many :subjects
end
