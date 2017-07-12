class CreateArticle1s < ActiveRecord::Migration
  def change
    create_table :article1s do |t|
    	t.string :title
    	t.text :body

      t.timestamps null: false
    end
  end
end
