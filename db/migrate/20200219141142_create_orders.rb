class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :first_dish
      t.string :second_dish
      t.string :drink
      t.date :date
      t.integer :cost
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
