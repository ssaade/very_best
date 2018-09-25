class FoodType < ApplicationRecord
  # Direct associations

  has_many   :dishes,
             :foreign_key => "foodtype_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
