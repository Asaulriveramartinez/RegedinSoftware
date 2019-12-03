class Userapplication < ApplicationRecord
  belongs_to :user  
  belongs_to :applicationclient  
  has_many :incidents
  has_many :users
end
