class ProjectStatus < ApplicationRecord
  belongs_to :status
  belongs_to :project
  validates :transition_date, presence: true
end
