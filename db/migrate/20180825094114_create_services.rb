class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.text :title
      t.text :image
      t.decimal :price
      t.integer :user_id
      t.integer :time_frame_id
      t.integer :from_language_id
      t.integer :to_language_id
      t.integer :document_id



      t.timestamps
    end
  end
end
