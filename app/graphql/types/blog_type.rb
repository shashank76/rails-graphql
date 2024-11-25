# frozen_string_literal: true

module Types
  class BlogType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :description, String
    field :user_name, String
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def user_name
      "#{object.user.first_name} #{object.user.last_name}" 
    end
  end
end
