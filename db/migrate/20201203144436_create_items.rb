class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|

      t.references :user,                null: false, foreign_key: true
      t.string  :title,                  null: false
      t.text    :note,                   null: false
      t.integer :jan_code,               null: false
      t.string  :model_num,              null: false
      t.integer :store_name,             null: false
      t.date :daytime,                   null: false
      t.integer :price,                  null: false
      t.timestamps
    end
  end
end
