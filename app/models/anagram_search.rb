class AnagramSearch
  attr_reader :load_time
  def initialize(file="public/data/dictionary.txt")
    time = Time.now
    @content = File.read(file)
    @anagram_map = map_annagrams
    @load_time = Time.now - time
  end 

  def find_annagrams(word)
    @anagram_map[word.split('').sort.join] || []
  end

  private

  def map_annagrams
    @content.split("\n").inject({}) do |hash, word|
      sorted_word = word.split('').sort.join
      hash[sorted_word] ||= []
      hash[sorted_word] << word
      hash
    end
  end
end