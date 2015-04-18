class AddKidIdToAllow < ActiveRecord::Migration
  def change
    add_column :allows, :kid_id, :integer
  end
end
