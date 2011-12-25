class Post < ActiveRecord::Base
   validates :name, :presence => true
   validates :title, :presence => true, :length => {:minimum => 5}
   validates :excerpt, :presence => false, :length => {:maximum => 140}
end
