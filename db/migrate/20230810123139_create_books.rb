class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.references :author, foreign_key: true, on_delete: :nullify
      t.references :category, foreign_key: true, on_delete: :nullify

      t.timestamps
    end
  end
end
