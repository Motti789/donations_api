class CreateDonations < ActiveRecord::Migration[7.0]
  def change
    create_table :donations do |t|
      t.decimal :amount, precision: 5, scale: 2

      t.timestamps
    end
  end
end
