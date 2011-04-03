authorization do
  role :admin do
    includes :user
    includes :news_maker
    includes :moderator
    has_permission_on :speeches, :to => [:edit, :update, :destroy]
  end

  role :moderator do
    # to future
  end

  role :news_maker do
    has_permission_on :posts, :to => :manage
  end

  role :user do
    includes :guest
    has_permission_on :speeches, :to => [:index, :show, :new, :create, :vote_up, :vote_down]
    has_permission_on :speeches, :to => [:edit, :update] do
      if_attribute :user => is { user }
    end
#    has_permission_on :posts, :to => :show
#    more convenient way but required fix js code to show useful information
#    has_permission_on :speeches, :to => [:vote_up, :vote_down] do
#      if_attribute :user => is_not {user}
#    end
  end

  role :guest do
    has_permission_on [:speeches], :to => [:show]
  end
end

privileges do
  privilege :manage, :includes => [:create, :read, :update, :delete]
  privilege :read, :includes => [:index, :show]
  privilege :create, :includes => :new
  privilege :update, :includes => :edit
  privilege :delete, :includes => :destroy
end