class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.text :city
      t.text :state

      t.timestamps
    end
  end
end
