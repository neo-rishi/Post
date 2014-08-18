class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
