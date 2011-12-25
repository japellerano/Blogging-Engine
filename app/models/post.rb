class Post < ActiveRecord::Base
   validates :name, :presence => true
   validates :title, :presence => true, :length => {:minimum => 5}
   validates :excerpt, :presence => false, :length => {:maximum => 600}
   
   has_many :comments, :dependent => :destroy
end
