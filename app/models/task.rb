class Task < ApplicationRecord
  has_many :notes, as: :noteable
  #Need optional to avoid "job id must exist" error 
  belongs_to :job, optional: true
end
