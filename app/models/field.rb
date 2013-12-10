class Field < ActiveRecord::Base

  has_many :cards, through: :field_values
  has_many :field_values
end