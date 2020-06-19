module Types
  class MutationType < Types::BaseObject

    field :login, mutation: Mutations::User::LoginMutation

  end
end
