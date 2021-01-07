class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items, &:timestamps
  end
end
