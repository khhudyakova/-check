class CreateForks < ActiveRecord::Migration[7.2]
  def change
    create_table :forks do |t|
      t.string :title
      t.references :chapter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
