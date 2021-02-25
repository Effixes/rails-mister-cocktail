class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :ingredient_id, uniqueness: {scope: :cocktail_id}

  # description, a cocktail and an ingredient,
  # and [cocktail, ingredient] pairings should be unique.
end
