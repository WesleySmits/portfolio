class RemoveImageFromArticle < ActiveRecord::Migration
  def change
  	remove_column :articles, :image
  end
end
