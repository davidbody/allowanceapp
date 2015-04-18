class Kid < ActiveRecord::Base
  belongs_to :parent
  belongs_to :user
  has_one :allow
  
  accepts_nested_attributes_for :allow, :reject_if => :all_blank, :allow_destroy => true
  
end
