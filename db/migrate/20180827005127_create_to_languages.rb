class CreateToLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :to_languages do |t|
      t.text :language_to

      t.timestamps
    end
  end
end
