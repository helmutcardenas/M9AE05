class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :description
      t.references :brand, null: false, foreign_key: true
      t.string :author
      t.string :status

      t.timestamps
    end
  end
end
