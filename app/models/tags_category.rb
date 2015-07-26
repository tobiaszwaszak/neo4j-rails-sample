class TagsCategory
  include Neo4j::ActiveNode

  property :name, type: String, index: :exact
  property :updated_at
  property :created_at

  has_many :in, :tags, origin: :category, model_class: :Tag
end
