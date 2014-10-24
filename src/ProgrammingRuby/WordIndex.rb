class WordIndex

  def initialize
    @index = {} # create a hash of arrays
  end

  def add_to_index(obj, *phrases)
    # Iterate through the list of phrases (title, artist, etc.)
    phrases.each do |phrase|
      # Iterate through the words in each phrase
      phrase.scan(/\w[-\w']+/) do |word|
        word.downcase!
        # If there is no array for this key, create a new array
        # with the word as key, and...
        @index[word] = [] if @index[word].nil?
        #...add the current object to it. Otherwise, just add
        # the current object to the existing key's array
        @index[word].push(obj)
      end
    end
  end

  def lookup(word)
    @index[word.downcase]
  end
end

