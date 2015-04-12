class AddUserIdToKid < ActiveRecord::Migration
  def change
    add_column :kids, :user_id, :integer
  end
end
