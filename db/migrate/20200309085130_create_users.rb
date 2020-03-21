class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nom
      t.string :prenom
      t.string :adresse
      t.string :mail
      t.string :password_digest
      t.boolean :confirmed, default: false
      t.string :confirmation_token

      t.timestamps
    end
  end
end
