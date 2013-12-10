class AddCardIdToFieldValue < ActiveRecord::Migration
  def change
    add_column :field_values, :card_id, :integer
  end
end
