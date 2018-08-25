class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.text :title
      t.text :image
      t.integer :user_id
      t.timestamps
    end
  end
end
