class CreateAllows < ActiveRecord::Migration
  def change
    create_table :allows do |t|
      t.integer :allowance_amount
      t.string :allowance_frequency

      t.timestamps
    end
  end
end
