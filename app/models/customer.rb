class Customer < ApplicationRecord
  has_many :jobs
  #attr_accessor :customer_id #this has to be :customer_id, not just :id (fixed the option values not displaying in 
  #collection_select) 
end
