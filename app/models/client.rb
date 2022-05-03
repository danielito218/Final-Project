class Client < ApplicationRecord
  belongs_to :city
  has_many:projects
  validates :name, presence: true


  #REPORT: Show some client projects

    def self.client_projects(client)


     if !client.nil?
        Project.where(client_id: client)
      end

    end


end
