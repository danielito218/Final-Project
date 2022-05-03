class ProjectStatus < ApplicationRecord
  belongs_to :status
  belongs_to :project
  validates :tansition_date, presence: true

	def self.projects_time(id)
  		
		projects_list = ProjectStatus.where(project_id: id)
		@first_date = projects_list.first.tansition_date
		@second_date = projects_list.last.tansition_date
		@final_date =  (@second_date.to_date- @first_date.to_date)

	end



end

