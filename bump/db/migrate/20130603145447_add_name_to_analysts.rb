class AddNameToAnalysts < ActiveRecord::Migration
  def change
    add_column :analysts, :name, :string
  end
end
