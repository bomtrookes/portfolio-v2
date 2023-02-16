class AddSkillsArrayToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :skills, :string, array: true, default: []
  end
end
