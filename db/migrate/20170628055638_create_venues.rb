class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :place
      t.string :location

      t.timestamps null: false
    end
  end
end
