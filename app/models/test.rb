class Test < ApplicationRecord
  belongs_to :user_subject

  has_many :questions
  has_many :results
end
