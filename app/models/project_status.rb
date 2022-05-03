class ProjectStatus < ApplicationRecord
  belongs_to :status
  belongs_to :project
  validates :tansition_date, presence: true
end
