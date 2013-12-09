class AddExpirationToCards < ActiveRecord::Migration
  def change
    add_column :cards, :expiration, :date
  end
end
