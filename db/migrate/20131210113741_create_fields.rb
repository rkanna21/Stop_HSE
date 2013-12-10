class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :key, null: false, unique: true
      t.string :label
    end
  end
end
