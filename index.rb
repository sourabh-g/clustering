class Index
  MINIMUM_SIMILARITY_SCORE = 0.5

  def initialize
    @clusters = []
  end

  def add(document)
    cluster = find_closest_cluster(document)
    cluster.nil? ? @clusters.push(Cluster.new(document)) : cluster.add(document)
  end

  def search(query)
    find_closest_cluster(Document.new(query))
  end

  def print
    @clusters.each do |cluster|
      p 'Printing a cluster'
      cluster.print
    end
  end

  private
  def find_closest_cluster(document)
    @clusters.find { |cluster| cluster.distance_from(document) >= MINIMUM_SIMILARITY_SCORE }
  end
end