class Ingredient < ActiveRecord::Base
  belongs_to_and_has_many :recipes
end
