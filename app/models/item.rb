class Item < ActiveRecord::Base

  has_many :taggings
  belongs_to :user

end