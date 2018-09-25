class Dish < ApplicationRecord
  # Direct associations

  belongs_to :foodtype,
             :class_name => "FoodType"

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :bookmarks,
             :source => :user

  # Validations

end
