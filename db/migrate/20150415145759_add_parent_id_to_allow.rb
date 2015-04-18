class AddParentIdToAllow < ActiveRecord::Migration
  def change
    add_column :allows, :parent_id, :integer
  end
end
