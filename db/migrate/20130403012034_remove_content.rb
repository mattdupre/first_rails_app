class RemoveContent < ActiveRecord::Migration
  def up
  	remove_column :microposts, :content
  end

  def down
  	add_column :microposts, :content, :string
  end
end
