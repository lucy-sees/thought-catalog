require_relative 'app'
require_relative 'movie'

def main
  app = App.new
  prompt(app)
end

def prompt(app)
  puts 'Catelogue of things!'
  loop do
    display_options
    input_number = gets.chomp.to_i
    break if input_number == 10

    actions(input_number, app)
  end
end

def actions(input_number, app)
  case input_number
  when 1
    app.list_books
  when 5
    app.list_labels
  when 7
    app.add_new_book
  else
    puts 'Invalid option, try again'
  end
end

# team, below is possible user's list
def display_options
  puts 'Please enter or input any option [1-10]'
  puts '1. - List all books'
  puts '2. - List all music albums'
  puts '3. - List all games'
  puts '4. - List all movies'
  puts '5. - List all genres'
  puts '6. - List all labels'
  puts '7. - List all authors'
  puts '8. - Add book'
  puts '9. - Add a music album'
  puts '10. - Add a game'
  puts '11. - Exit'
end

main
