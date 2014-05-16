class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
    	t.string :title
    	t.text :body
    	t.slug :string
    	t.attachment :image

      t.timestamps
    end
  end
end
