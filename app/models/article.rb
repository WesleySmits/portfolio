class Article < ActiveRecord::Base
	validates_presence_of :title, :on => :create, :update => "can't be blank"
  validates_presence_of :body, :on => :create, :update => "can't be blank"
  
  # Paperclip
  has_attached_file :image,
    :styles => {
      :thumb=> "100x100#",
      :small  => "150x150>",
      :medium => "300x300>",
      :large =>   "400x400>" }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
