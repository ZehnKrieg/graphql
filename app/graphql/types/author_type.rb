class Types::AuthorType < Types::BaseObject
  description(new_description = "An author")
  field :id, ID, null: false
  field :first_name, String, null: true, camelize: false
  field :last_name, String, null: true, camelize: false
  field :age, Int, null: false
  field :is_alive, Boolean, null: true, camelize: false
  field :full_name, String, null: true, camelize: false

  def full_name
    ([object.first_name, object.last_name].compact).join(separator = " ")
  end

  # The name of the field matches the method of the model
  field :coordinates, Types::CoordinatesTypes, null: false

end