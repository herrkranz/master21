class Book
  attr_accessor :title, :text, :pages_count, :publisher, :categories

  def initialize(title: '', text: '', pages_count: 4, publisher: "Rodrigo",
                 categories: ['', ''] )
    @title = title
    @text = text
    @pages_count = pages_count
    @publisher = publisher
    @categories = categories

  end

  def redact(word)
    @text.sub(word, "*****")
  end

end

my_book = Book.new

my_book.title = "President"

my_book.text = "The Obama administration on Tuesday called on U.S. states to ban agreements prohibiting many workers from moving to their employers' rivals, saying it would lead to a more competitive labor market and faster wage growth"

#my_book.publisher = "Rubicon"

#my_book.categories = "president", "states"

#puts my_book.title

# puts my_book.text

#puts "The book #{my_book.title} is published by #{my_book.publisher} and is in #{my_book.categories}"
input = gets.chomp

puts my_book.redact(input)
#puts my_book.text.sub("Obama", "Boss")
