class Produit < ApplicationRecord
  belongs_to :fournisseur

  validates :nom, :adresse, :tel, presence: true
end
