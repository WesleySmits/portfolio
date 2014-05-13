class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size

      t.timestamps
    end
  end
end
