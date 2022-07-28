module Types
  class CardType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false
    field :name, String
    field :effectType, String
    field :power, Integer
    field :life, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
