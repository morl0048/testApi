class Fournisseur < ApplicationRecord
  has_many :produits

  validates :nom, :description, presence: true
  validates :quantite, :prix, presence: true, numericality: true
end
