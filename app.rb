require './classes/student'
require './classes/teacher'
require './classes/rental'
require './classes/person'
require './classes/bookLister'
require './classes/personLister'
require './classes/personCreator'
require './classes/bookCreator'
require './classes/rentalCreator'
require './classes/rentalLister'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
    @book_lister = BookLister.new(@books)
    @person_lister = PersonLister.new(@people)
    @person_creator = PersonCreator.new(@people)
    @book_creator = BookCreator.new(@books)
    @rental_creator = RentalCreator.new(@books, @people, @rentals)
    @rental_lister = RentalLister.new(@rentals, @people, @books)
  end

  def start
    loop do
      puts 'What would you like to do?'
      puts '1 - List all books'
      puts '2 - List all people'
      puts '3 - Create a person'
      puts '4 - Create a book'
      puts '5 - Create a rental'
      puts '6 - List all rentals'
      puts '7 - Quit'

      choice = gets.chomp.downcase
      case choice
      when '1'
        @book_lister.list_all_books
      when '2'
        @person_lister.list_all_people
      when '3'
        @person_creator.create_person
      when '4'
        @book_creator.create_book
      when '5'
        @rental_creator.create_rental
      when '6'
        @rental_lister.list_all_rentals
      when '7'
        break
      else
        puts 'Invalid choice'
      end
      puts "\n"
    end
  end
end