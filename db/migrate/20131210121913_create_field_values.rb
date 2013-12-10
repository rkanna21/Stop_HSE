class CreateFieldValues < ActiveRecord::Migration
  def change
    create_table :field_values do |t|

      t.timestamps
    end
  end
end
