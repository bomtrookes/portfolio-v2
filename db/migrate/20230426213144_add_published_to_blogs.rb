class AddPublishedToBlogs < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :published, :boolean, default: false
  end
end
