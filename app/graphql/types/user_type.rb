module Types
  class UserType < BaseObject
    field :id, ID, null: false
    field :email, String, null: false
    field :password, String, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
  end
end
