class Ability
    include CanCan::Ability

    def initialize(user)

    user ||= User.new #guest user (not logged in)

    if user.present?
        can :create, :update, :destroy, :all
    else
        can :read, :all
    end

    alias_action :create, :read, :update, :delete, :to => :crud

    can :crud, Auction do |auction|
        user == auction.user
    end
  
    can :crud, Bid do |bid|
        user == bid.user 
    end
    

  end
end