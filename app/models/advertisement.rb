class Advertisement < ApplicationRecord
  enum adv_type: [:sell, :search]
  enum status: [:open, :closed, :expired]

  belongs_to :user
end
