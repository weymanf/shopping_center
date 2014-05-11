class tag
  
  has_many :taggings
  has_many :items, :through => :taggings



end