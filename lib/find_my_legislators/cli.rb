#CLI Controller - responsible for business logic or user interactions
class FindMyLegislators::CLI

  def call
    list_legislators
    menu
  end

  def list_legislators
    puts "Welcome to Find My Legislators:"
    puts "--------------------------------"
    puts "Give me your zip code!"
    zipcode = gets.chomp
    @legislators = FindMyLegislators::Legislators.scrape_whoismyrep(zipcode)
    @legislators.each_with_index do |leg, index|
    puts "#{index + 1}. #{leg[:name]}"
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the legislator you would like more information on, type list to go back to menu, or type exit."
    input = gets.strip.downcase
    if input.to_i > 0
      leg = @legislators[input.to_i-1]
      puts "#{input}. #{leg[:name]}: #{leg[:website]}"
    elsif input == "list"
      list_legislators
    elsif input == "exit"
      goodbye
    else
      puts "Not sure what you are looking for, please type list or exit."
      end
    end
  end

  def goodbye
    puts "Thank you for taking the time to learn more about your legislative branch."
  end
end
end
