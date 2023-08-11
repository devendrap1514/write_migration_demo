class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name, null: false
      t.references :author, null: false, foreign_key: true, on_delete: :nullify
      t.references :category, null: false, foreign_key: true, on_delete: :nullify

      t.timestamps
    end
  end
end
