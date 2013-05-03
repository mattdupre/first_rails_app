class CreateNewProjects < ActiveRecord::Migration
  def change
    create_table :new_projects do |t|

      t.timestamps
    end
  end
end
