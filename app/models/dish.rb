class Dish < ApplicationRecord
  # Direct associations

  belongs_to :foodtype,
             :class_name => "FoodType"

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
