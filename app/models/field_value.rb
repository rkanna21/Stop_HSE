class FieldValue < ActiveRecord::Base
  belongs_to :card
  belongs_to :field

end
