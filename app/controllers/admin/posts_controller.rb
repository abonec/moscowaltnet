class Admin::PostsController < Puffer::Base
  filter_resource_access
  setup do
    group :posts
  end

  index do
    field :id
    field :name
    field :title
    field :content
    field :created_at
    field :updated_at
  end

  form do
    field :id
    field :name
    field :title
    field :content
    field :created_at
    field :updated_at
  end

end
