module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String
    field :first_name, String
    field :last_name, String
    field :deck_size, Integer
    field :cards, [Types::CardType]
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def cards
        AssociationLoader.for(object.class, :cards).load(object)
    end
  end
end
