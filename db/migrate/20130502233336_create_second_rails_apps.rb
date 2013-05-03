class CreateSecondRailsApps < ActiveRecord::Migration
  def change
    create_table :second_rails_apps do |t|

      t.timestamps
    end
  end
end
