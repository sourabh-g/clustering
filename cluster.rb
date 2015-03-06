class Cluster
  def initialize(document)
    @documents = [document]
  end

  def distance_from(other_document)
    cumulative_distance_from(other_document) / @documents.count
  end

  def add(document)
    @documents.push(document)
  end

  def print
    @documents.each do |document|
      document.print
    end
  end

  private
  def cumulative_distance_from(other_document)
    @documents.inject(0) { |total_distance, document| total_distance + document.distance_from(other_document) }
  end
end