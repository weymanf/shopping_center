class Item < ActiveRecord::Base


  attr_accessible :pict
  has_attached_file :pict, :styles => { :large => "600x600", :medium => "400x400", :thumb => "100x100>"}, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :pict, :content_type => /\Aimage\/.*\Z/
  
  has_many :taggings
  belongs_to :user

end