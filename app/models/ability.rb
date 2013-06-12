class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.role_ids==[1]
      can :manage, :all
    
    
    elsif user.role_ids==[2]
      can :show, User
      can :show, Post
      can :read, Comment
      can :create, Post
      can :create, Comment
      can :destroy, Comment, :user_id => user.id
      can :edit, Post , :user_id => user.id
      can :update, Post , :user_id => user.id
      can :destroy, Post , :user_id => user.id
    
    
    
    elsif user.role_ids==[3]
      can :show, User
      can :show, Post
      can :read, Comment
      can :create, Comment
      can :update, Comment, :user_id => user.id
      can :destroy, Comment, :user_id => user.id
  
  
    else
        # Guest user can only read something
        can :show, Post
        can :read, Comment
    end
 end
end
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  
