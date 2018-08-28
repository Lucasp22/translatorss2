class CreateOrdersUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :orders_users do |t|
      t.integer :user_id
      t.integer :order_id
    end
  end
end
