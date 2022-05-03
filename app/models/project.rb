class Project < ApplicationRecord
  belongs_to :status
  belongs_to :client
  validates :code, presence: true, uniqueness: true

  #Counts the number of projects per each status

 def self.project_counter(id)

 	count = Project.where(status_id: id).count
 	return count

 end

 #Calculates the final amount of every project per each status

 def self.projects_amount(id)

 	projects = Project.where(status_id: id)

 	@total_amount = 0

 	projects.each do |project|
 		

 		@total_amount +=  project.amount

 	end

 	return @total_amount

 end

end
