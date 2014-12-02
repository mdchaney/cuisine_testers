class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :tester, null: false
      t.references :cuisine, null: false

      t.timestamps
    end
    add_index :ratings, :tester_id
    add_index :ratings, :cuisine_id
  end
end
