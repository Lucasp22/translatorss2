class AddTranslatorToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :translator, :boolean

  end
end
