class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :title
      t.string :view_count

      t.timestamps null: false
    end
  end
end
