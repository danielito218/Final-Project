class Status < ApplicationRecord
    has_many:project_statuses
    has_many:projects
end
