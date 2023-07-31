require './classes/book'
class CreateBook
  def create_book(books)
    print 'Title: '
    title = gets.chomp
    print 'Enter the Author name: '
    author = gets.chomp
    book = Book.new(title, author)
    books << book
    puts 'Book created successfully'
  end
end
