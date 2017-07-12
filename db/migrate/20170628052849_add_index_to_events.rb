class AddIndexToEvents < ActiveRecord::Migration
  def change
  	add_index :events, :view_count
  end
end
