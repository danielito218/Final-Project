class Client < ApplicationRecord
  belongs_to :city
  has_many:projects
end
