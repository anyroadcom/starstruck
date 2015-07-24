class DeveloperSerializer < ActiveModel::Serializer
  attributes :slug, :email, :name, :stars
end