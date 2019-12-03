class Incident < ApplicationRecord
  paginates_per 5
  max_paginates_per 100
  validates :datereport, :presence => true
  validates :description, :presence => true
  belongs_to :area
  belongs_to :userapplication
  belongs_to :user
  belongs_to :criticality
  has_many :incidentfiles
  has_many :incidentmanagements
end
