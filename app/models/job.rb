class Job < ApplicationRecord
 
  # Only need optional: true on the belongs_to side of the association, not the has_many side. 
  belongs_to :customer, optional: true
  #accepts_nested_attributes_for :customer
  #attr_accessor :customer_id
  
  has_many :notes, as: :noteable
  has_many :tasks
  belongs_to :user
  
end
