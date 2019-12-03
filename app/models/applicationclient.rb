class Applicationclient < ApplicationRecord
  
  belongs_to :application
  belongs_to :client
  has_many :userapplications
end
