require './classes/display'
require './classes/utility/show_lists'
require './classes/utility/create_person'
require './classes/utility/create_book'
require './classes/utility/create_rental'

class App
  attr_reader :books, :people, :rentals

  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def start
    @option = 0

    until @option == 7
      display_menu
      @option = gets.chomp.to_i

      option_actions = {
        1 => -> { ShowList.new.list_all_books(@books) },
        2 => -> { ShowList.new.list_all_people(@people) },
        3 => -> { CreatePerson.new.create_person(@people) },
        4 => -> { CreateBook.new.create_book(@books) },
        5 => -> { CreateRental.new.create_rental(@books, @people, @rentals) },
        6 => -> { ShowList.new.list_all_rentals(@rentals) },
        7 => -> { puts 'Exiting' },
        default: -> { puts 'Please enter a number between 1 and 7.' }
      }

      action = option_actions[@option] || option_actions[:default]
      action.call
    end
  end
end
