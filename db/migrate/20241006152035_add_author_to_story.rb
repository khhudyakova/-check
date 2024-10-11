class AddAuthorToStory < ActiveRecord::Migration[7.2]
  def change
    add_column :stories, :author, :string
  end
end
