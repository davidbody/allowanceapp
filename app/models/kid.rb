class Kid < ActiveRecord::Base
  belongs_to :parent
  belongs_to :user
  has_many :allows
  
  accepts_nested_attributes_for :allows, :allow_destroy => true
  
end
