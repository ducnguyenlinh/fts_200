class Report < ApplicationRecord
  belongs_to :user
  belongs_to :course

  delegate :name, to: :course, prefix: true
end
