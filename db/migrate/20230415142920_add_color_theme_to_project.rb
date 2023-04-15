class AddColorThemeToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :color_theme, :string, default: 'default'
  end
end
