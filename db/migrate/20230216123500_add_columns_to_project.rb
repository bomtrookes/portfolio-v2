class AddColumnsToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :name, :string
    add_column :projects, :caption, :string
    add_column :projects, :content, :text
    add_column :projects, :url, :string
    add_column :projects, :github, :string
    add_column :projects, :blog, :string
  end
end
