class Income < ApplicationRecord
  belongs_to :user

  validates :source, :post_tax_amount,:pay_schedule, presence:true
  validates :post_tax_amount, numericality: true
  validates :pay_schedule,  inclusion: { in: ["weekly", "bi-weekly","monthly"],
    message: "'%{value}' is not a valid pay schedule" }, case_sensitive: false
end
