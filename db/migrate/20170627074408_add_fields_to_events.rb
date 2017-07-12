class AddFieldsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :state, :string
    add_column :events, :country, :string
  end
end
