class AddPublishedToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :published, :boolean, default: false
  end
end
