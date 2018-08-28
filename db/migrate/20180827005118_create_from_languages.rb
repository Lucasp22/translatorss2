class CreateFromLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :from_languages do |t|
      t.text :language_from
      t.timestamps
    end
  end
end
