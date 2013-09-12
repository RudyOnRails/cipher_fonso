class Input

  ALPHABET = ("a".."z").to_a

  # attr_accessor :file_path
  attr_reader :keyword, :file_path

  def initialize(file_path)
    @file_path = file_path
  end

  def read_file_and_return_keyword
    f = File.new(@file_path)
    contents = f.readlines
    @keyword = contents.first.chomp
  end

  def find_natural_word
   keyword_array = @keyword.split("")
   what_is_natural_word_for(keyword_array)
  end

  def what_is_natural_word_for(keyword_array)
    new_keyword_array = []
    keyword_array.each do |letter|
      letter_position = ALPHABET.index(letter.downcase)
      new_position = letter_position + 1
      new_letter = ALPHABET[new_position]
      new_keyword_array << new_letter
    end
    p new_keyword_array
  end

  def enegma
    #holds the 0-25 object/thing
    # returns new_position
    # note : mac system dictionary is located @
    # /user/share/dict/words
  end
end