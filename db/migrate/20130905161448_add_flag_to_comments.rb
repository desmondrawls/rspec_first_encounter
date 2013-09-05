class AddFlagToComments < ActiveRecord::Migration
  def change
    add_column :comments, :flag, :boolean
  end
end
