class Project < ActiveRecord::Base
  has_many :assets, :dependent => :destroy
  
  validates_presence_of :name, :on => :create, :update => "can't be blank"
  validates_presence_of :description, :on => :create, :update => "can't be blank"

  accepts_nested_attributes_for :assets, :allow_destroy => true
end
