require_relative "../../app/models/anagram_search.rb"

describe "AnagramSearch" do
  before do
    @words = "begin\nbeing\nbeginning"
    File.stub(:read => @words)
  end

  it "returns the anagrams of a word being searched for" do
    AnagramSearch.new('dictionary.txt').find_annagrams("being").should == ["begin", "being"]
  end

  it "returns the anagrams of a word being searched for in any order" do
    AnagramSearch.new('dictionary.txt').find_annagrams("begin").should == ["begin", "being"]
  end

  it "returns the anagrams of a word being searched for" do
    AnagramSearch.new('dictionary.txt').find_annagrams("word").should == "no anagram found"
  end
end