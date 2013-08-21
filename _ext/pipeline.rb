Awestruct::Extensions::Pipeline.new do
  extension Awestruct::Extensions::Posts.new '/news', :posts
  extension Awestruct::Extensions::Paginator.new :posts, '/news/index', :per_page => 2
  extension Awestruct::Extensions::Indexifier.new
  # Indexifier *must* come before Atomizer
  extension Awestruct::Extensions::Atomizer.new :posts, '/feed.atom'

  helper Awestruct::Extensions::Partial
end
