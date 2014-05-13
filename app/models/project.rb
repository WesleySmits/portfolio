class Project < ActiveRecord::Base
	validates_presence_of :name, :on => :create, :update => "can't be blank"
	validates_presence_of :description, :on => :create, :update => "can't be blank"
	
	# Paperclip
	has_attached_file :image,
	  :styles => {
	    :thumb=> "100x100#",
	    :small  => "150x150>",
	    :medium => "300x300>",
	    :large =>   "400x400>" }

end
