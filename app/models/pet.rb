class Pet < ApplicationRecord
  SPECIES = ["dog", "cat", "bird", "elephant", "lama", "capibara", "dragon"]

  validates :species, presence: true, inclusion: { in: SPECIES }
  validates :name, :address, presence: true

  def self.list_species
    SPECIES.sort.map(&:capitalize)
  end
end
