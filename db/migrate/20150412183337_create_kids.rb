class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :kid_name
      t.string :kid_age
      t.string :kid_gender

      t.timestamps
    end
  end
end
