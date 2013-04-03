class AddContent < ActiveRecord::Migration
  def up
  	add_column :microposts, :content, :string
  end

  def down
  end
end
