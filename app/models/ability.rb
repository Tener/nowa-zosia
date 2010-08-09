class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can [:manage, :comment, :read], Post
      can :manage, Sponsor
      can :manage, User
    if user.organiser?
      can [:manage, :comment, :read], Post
      can :manage, Sponsor
    elsif user.participant?
      can [:comment, :read], Post
    elsif user.speaker?
      can [:comment, :read], Post
    else
      can :read, Post
    end
  end
end