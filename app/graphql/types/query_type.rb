module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # /authors
    field :authors, [Types::AuthorType], null: true

    def authors
      Author.all
    end

    # /author/id
    field :author, Types::AuthorType, null: false do
      argument :id, ID, required: true
    end

    def author(id:)
      Author.find(id)
    end

  end
end
