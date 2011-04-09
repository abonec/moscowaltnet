class Admin::UsersController < Puffer::Base
  filter_resource_access
  setup do
    group :users
  end

  index do
    field :id
    field :provider
    field :uid
    field :name
    field :email
    field :created_at
    field :updated_at
    field :roles
  end

  form do
    field :id
    field :provider
    field :uid
    field :name
    field :email
    field :created_at
    field :updated_at
    field :roles
  end

end
