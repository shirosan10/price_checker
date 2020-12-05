class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|

      t.string  :store_name,		  null: false
      t.integer :phone,	          null: false
      t.string  :station,		      null: false
      t.string  :zip_code,	      null: false
      t.integer :prefecture_id,		null: false
      t.integer :city_id,		      null: false
      t.string  :line,          	null: false
      t.timestamps
    end
  end
end
