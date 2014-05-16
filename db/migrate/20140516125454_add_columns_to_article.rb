class AddColumnsToArticle < ActiveRecord::Migration
  def change
  	add_column :articles, :title, :string
  	add_column :articles, :body, :test
  	add_column :articles, :slug, :string
  	add_column :articles, :image, :attachment
  end
end
