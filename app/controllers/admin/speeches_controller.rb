class Admin::SpeechesController < Puffer::Base

  setup do
    group :speeches
  end

  index do
    field :id
    field :user_id
    field :title
    field :body
    field :approved
    field :voices
    field :created_at
    field :updated_at
  end

  form do
    field :id
    field :user_id
    field :title
    field :body
    field :approved
    field :voices
    field :created_at
    field :updated_at
  end

end
