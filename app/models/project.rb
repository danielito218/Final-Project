class Project < ApplicationRecord
  belongs_to :status
  belongs_to :client
  validates :code, presence: true, uniqueness: true
end
