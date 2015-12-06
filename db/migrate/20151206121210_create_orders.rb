class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :phone_number
      t.text :address
      t.decimal :delivery_cost
      t.decimal :total_cost
      t.references :menu_item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
