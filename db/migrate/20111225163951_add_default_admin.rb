class AddDefaultAdmin < ActiveRecord::Migration
  def self.up
   if !User.find_by_username('admin')
      User.create(:username => 'admin', :email => 'website@japellerano.com', :password => 'changeme', :password_confirmation => 'changeme', :roll => :administrator)
   end
  end

  def self.down
   
  end
end
