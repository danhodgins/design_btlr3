class Job < ApplicationRecord
  has_many :notes, as: :noteable
  has_many :tasks
  belongs_to :user
  belongs_to :customer
end
