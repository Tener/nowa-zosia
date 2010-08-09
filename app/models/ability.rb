class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      case user.role
      when "admin"
        can [:manage, :read], Post
        can :manage, Sponsor
        can :manage, User
      when "organiser"
        can [:manage, :read], Post
        can :manage, Sponsor
      when "participant"
        can :read, Post
      when "speaker"
        can :read, Post
      end
    else
      can :read, Post
    end
  end
end