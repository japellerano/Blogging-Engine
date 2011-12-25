class Ability
   include CanCan::Ability
   
   def initialize(user)
      user ||= User.new
      
      if user.role? :administrator
         can :manage, :all
      elseif user.role? :operator
         can :manage, Post
      elseif user.role? :subscriber
         can :manage, Comment
      else
         can :read, :all
      end
   end
end