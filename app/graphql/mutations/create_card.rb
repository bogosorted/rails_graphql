module Mutations
  class CreateCard < BaseMutation
     field :card, Types::CardType, null: false

     argument :user_id, Integer, required: true
     argument :name, String, required: true
     argument :life, Integer, required: true
     argument :power, Integer, required: true

    def resolve(user_id:, name:, power:, life:)
        user = User.find(user_id)
        card = user.cards.build(name: name, power: power, life: life)
      if card.save
        { card: card   }
      else 
        {errors: card.errors.full_messages}
      end
      rescue => e
        {erros: e.to_s}
    end
  end
end
