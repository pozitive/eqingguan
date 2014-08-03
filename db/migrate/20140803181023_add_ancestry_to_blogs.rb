class AddAncestryToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :ancestry, :string
    add_index :blogs, :ancestry
  end
end
