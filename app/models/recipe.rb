class Recipe
  include Neo4j::ActiveNode

  property :name, type: String, index: :exact
  property :updated_at
  property :created_at

  has_many :out, :tags, type: :TAGS, model_class: :Tag
  has_one :in, :creator, type: :CREATOR, model_class: :User
end
