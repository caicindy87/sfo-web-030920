class SpeciesSerializer < ActiveModel::Serializer
  attributes :name, :id

  has_many :animals
end
