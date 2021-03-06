class Budget < ApplicationRecord
  belongs_to :user
  has_many :goals

  validates :budget_name, :monthly_spend, presence:true
  validates :monthly_spend, numericality: true
end
