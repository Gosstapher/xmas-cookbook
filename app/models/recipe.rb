class Recipe < ActiveRecord::Base
  belongs_to :category
  belongs_to_and_has_many :ingredients
end
