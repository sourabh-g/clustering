Dir[('../*.rb')].each { |f| require f }
index = Index.new

rails_document = Document.new(%w(rails active record web application))
index.add(rails_document)
p 'Added a rails doc'

p index

p 'added a scala doc'

scala_document = Document.new(%w(scala jvm traits functional))
index.add(scala_document)
p index

p '************* added another scala doc'
another_scala_document = Document.new(%w(scala pattern matching odersky functional))
index.add(another_scala_document)
p index

search_terms = %w(rails active application)
cluster = index.search(search_terms)
p cluster

# index.add(another_rails_document)
# index.print

