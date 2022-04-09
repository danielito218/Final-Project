class ProjectStatus < ApplicationRecord
  belongs_to :status
  belongs_to :project
  
end
