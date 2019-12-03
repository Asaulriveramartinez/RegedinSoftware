class Incidentmanagement < ApplicationRecord
  validates :datereport, :presence => true
  validates :description, :presence => true
  belongs_to :user
  belongs_to :incident
  has_many :managefiles
end
