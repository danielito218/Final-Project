class Status < ApplicationRecord
    has_many:project_statuses
    has_many:projects
    validates :code, presence: true, uniqueness: true
    validates :name, presence: true, uniqueness: true


   
end
