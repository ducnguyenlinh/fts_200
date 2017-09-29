class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :avatar, AvatarUploader
  validates_processing_of :avatar

  has_many :user_courses
  has_many :courses, through: :user_courses
  has_many :reports
  has_many :histories
  has_many :user_subjects
  has_many :subjects, through: :user_subjects
end
