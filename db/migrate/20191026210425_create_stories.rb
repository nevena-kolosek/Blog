class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :part
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
