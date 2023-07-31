require './classes/book'

class ShowList
  def list_all_books(books)
    return puts 'There are no books in your library' if books.empty?

    books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
  end

  def list_all_people(people)
    return puts 'No people found.' if people.empty?

    people.each { |person| puts "[#{person.class}] Name: #{person.name}, Id: #{person.id}, Age: #{person.age}" }
  end

  def list_all_rentals(rentals)
    print 'ID of the person: '
    id = gets.chomp.to_i
    puts 'Rentals: '
    list = []
    rentals.each do |rental|
      list << "Date: #{rental.date}, Book: '#{rental.book.title}' by #{rental.book.author}" if rental.person.id == id
    end
    return list.each { |rental| puts rental } unless list.empty?

    puts 'No record found for the selected person'
  end
end
