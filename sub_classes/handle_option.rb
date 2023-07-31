class HandleOption
  def handle_option(option, app)
    option_actions = {
      1 => -> { app.list_all_books },
      2 => -> { app.list_all_people },
      3 => -> { app.create_person },
      4 => -> { app.create_book },
      5 => -> { app.create_rental },
      6 => -> { app.list_all_rentals },
      7 => -> { puts 'Exiting' },
      default: -> { puts 'Please enter a number between 1 and 7.' }
    }

    action = option_actions[option] || option_actions[:default]
    action.call
  end
end
