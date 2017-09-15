class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  has_many :courses, through: :user_courses
  has_many :reports
  has_many :histories
  has_many :subjects, through: :user_subjects
end
