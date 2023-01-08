class CreatePublications < ActiveRecord::Migration[7.0]
  def change
    create_table :publications do |t|
      t.string  :name
      t.text :description
      t.integer :label
      t.string :author
      t.string :status
      t.integer :publication_id
      t.timestamps
    end
  end
end
