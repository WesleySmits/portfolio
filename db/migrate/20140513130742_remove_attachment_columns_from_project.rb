class RemoveAttachmentColumnsFromProject < ActiveRecord::Migration
  def change
  	remove_column :projects, :image_file_name
  	remove_column :projects, :image_content_type
  	remove_column :projects, :image_file_size
  end
end
