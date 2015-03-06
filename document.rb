class Document
  attr_reader :words
  def initialize(words)
    @words = words
  end

  def distance_from(other_document)
    matching_word_count = other_document.words.inject(0) do |matching_word_count, word|
      @words.include?(word) ? matching_word_count + 1 : matching_word_count
    end
    matching_word_count / @words.count.to_f
  end

  def print
    p @words
  end
end