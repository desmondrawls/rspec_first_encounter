class AddFlagToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :flag, :boolean
  end
end
