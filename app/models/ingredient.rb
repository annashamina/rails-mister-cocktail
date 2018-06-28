class Ingredient < ApplicationRecord
    has_many :doses
    validates :name, uniqueness: true, presence: true
end

# You can't delete an ingredient if it used by at least one cocktail.