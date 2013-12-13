class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)

    # Users
    can :update, User do |edited_user|
      edited_user.id == user.id
    end
    can :create, User do |new_user|
      user.new_record?
    end

    # Thoughts
    can :update, Thought do |thought|
      thought.user == user
    end
    can :destroy, Thought do |thought|
      thought.user == user
    end
    can :create, Thought unless user.new_record?
  end
end
