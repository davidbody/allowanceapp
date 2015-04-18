class RemoveParentIdFromAllows < ActiveRecord::Migration
  def change
    remove_column :allows, :parent_id, :integer
  end
end
