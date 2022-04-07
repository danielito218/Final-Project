class Project < ApplicationRecord
  belongs_to :status
  belongs_to :client
end
