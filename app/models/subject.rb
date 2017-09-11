class Subject < ApplicationRecord
  belongs_to :course

  has_many :histories
  has_many :users, through: :user_subjects
end
