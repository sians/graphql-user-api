module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :things, [Types::ThingType], null: false,
      description: "All the things"
    def things
      Thing.all
    end

    field :me, Types::UserType, null: false
    def me(id:)
      context[:current_user]
    end
  end
end
