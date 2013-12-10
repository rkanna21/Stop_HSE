class Card < ActiveRecord::Base
  has_many :fields, through: :field_values do
    def [](key)
      where(key: key).first
    end
  end


  has_many :field_values




end
