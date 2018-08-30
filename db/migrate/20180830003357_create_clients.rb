class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|


      t.text :email
      t.string :password_digest

      t.timestamps
    end
  end
end