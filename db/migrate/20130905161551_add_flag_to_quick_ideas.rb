class AddFlagToQuickIdeas < ActiveRecord::Migration
  def change
    add_column :quick_ideas, :flag, :boolean
  end
end
