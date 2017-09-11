class History < ApplicationRecord
  belongs_to :user
  belongs_to :course
  belongs_to :subject
end
