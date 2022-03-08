class Pet < ApplicationRecord
  SPECIES = %w[dog cat tiger elephant iguana]

  validates :species, :address, :date_found, presence: true
  validates :species, inclusion: { in: SPECIES }

  def count_days
    (Date.today - self.date_found).round
  end
end
