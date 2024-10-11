class CreateChapters < ActiveRecord::Migration[7.2]
  def change
    create_table :chapters do |t|
      t.string :chname
      t.string :chnotes
      t.text :body
      t.references :story, null: false, foreign_key: true

      t.timestamps
    end
  end
end
