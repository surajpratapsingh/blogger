class ChangeColumnInEvents < ActiveRecord::Migration
  def change
  	change_column :events, :view_count, :integer
  end
end
