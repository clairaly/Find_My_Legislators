#CLI Controller - responsible for business logic or user interactions
class FindMyLegislators::CLI

  def call
    list_legislators
    menu
    goodbye
  end

  def list_legislators
    puts "Welcome to Find My Legislators:"
    puts 'Gimme your zip code!'
    get_input
    @legislators = FindMyLegislators::Legislators
  end

  def get_input
    input = gets.strip
    @@Legislator_data = Scraper.scrape_legislator_page
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the legislator you would like more information on, type list to go back to menu, or type exit."
    input = gets.strip.downcase
    case input
    when "1"
      puts "More info on your Rep.."
    when "2"
      puts "More info on your Senator..."
    when "list"
      list_legislators
    else
      puts "Not sure what you are looking for, please type list or exit."
      end
    end
  end

  def goodbye
    puts "Thank you for taking the time to learn more about your legislative branch."
  end

end
