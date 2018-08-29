class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :language_from
      t.string :language_to

      t.timestamps
    end
  end
end
