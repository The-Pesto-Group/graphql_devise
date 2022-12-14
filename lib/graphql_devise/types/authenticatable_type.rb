# frozen_string_literal: true

module GraphqlDevise
  module Types
    class AuthenticatableType < BaseType
      field :email, String, null: false
    end
  end
end
