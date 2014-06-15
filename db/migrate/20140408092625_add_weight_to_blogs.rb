class AddWeightToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :weight, :integer
  end
end
