module Mutations
  module User
    class LoginMutation < Mutations::BaseMutation
      argument :email, String, required: true
      argument :password, String, required: true

      field :jwt, String, null: true
      field :user, Types::UserType, null: true

      def resolve(email:, password:)
        user = User.find_for_authentication(email: email)
        return {} unless user

        is_valid_for_auth = user.valid_for_authentication?(
          user.valid_password?(password)
        )
        return is_valid_for_auth ? user : nil
      end
    end
  end
end
