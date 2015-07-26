class Tag
  include Neo4j::ActiveNode

  property :name, type: String, index: :exact
  property :updated_at
  property :created_at

  has_one :out, :category, type: :CATEGORY, model_class: :TagsCategory
  has_many :in, :recipies, origin: :tags, model_class: :Recipe

end
