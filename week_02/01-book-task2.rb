class Book
  attr_accessor :title, :text, :pages_count, :publisher, :categories

  def initialize(title: '', text: '', pages_count: 1, publisher: "Rodrigo",
                 categories: ['', ''] )
    @title = title
    @text = text
    @pages_count = pages_count
    @publisher = publisher
    @categories = categories

  end

# This method takes one argument which is a word that should be redacted from @text.
#
#Example:
#  book.redact("Obama")
#  => "This is a text where the word **** is redacted"
#
# Returns: The @text body with the specific word redacted with ****

  def redact(word, replacement)
    @text.sub(word, replacement)
  end


# This method returns the amount of words that need to be one page so that
# the whole text will fit into the book.
# (text / pages_count = number of words per page)
#
# Example:
#   book.words_per_page
#   => 17
# REturns: A number of words per page

  def words_per_page
    @text.split.size / pages_count
  end

end

my_book = Book.new

#everything below this line will just call the methods from the class - which is self contained
#it will call methods from the blueprint
#book.pages_count = 10

my_book.title = "President"

my_book.text = <<-eos
"The Obama administration on Tuesday called on U.S. states to ban agreements
prohibiting many workers from moving to their employers' rivals, saying it would
lead to a more competitive labor market and faster wage growth"
eos

#my_book.publisher = "Rubicon"

#my_book.categories = "president", "states"

#puts my_book.title

# puts my_book.text

#puts "The book #{my_book.title} is published by #{my_book.publisher} and is in #{my_book.categories}"
input1 = gets.chomp
input2 = gets.chomp

puts my_book.redact(input1, input2)
#puts my_book.text.sub("Obama", "Boss")
