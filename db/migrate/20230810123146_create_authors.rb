class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name, null: false
      t.string :contact
      t.string :email

      t.timestamps
    end
  end
end
