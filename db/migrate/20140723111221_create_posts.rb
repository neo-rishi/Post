class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :post_type		
      t.string :text
      t.column "status", :string, :default=>'Enabel'
      t.timestamps
    end
  end
end
