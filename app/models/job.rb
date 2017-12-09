class Job < ApplicationRecord
  has_many :notes, as: :noteable
  has_many :tasks
end
