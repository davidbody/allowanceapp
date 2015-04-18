class AddAllowIdToKid < ActiveRecord::Migration
  def change
    add_column :kids, :allow_id, :integer
  end
end
