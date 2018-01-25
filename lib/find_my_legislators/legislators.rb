class FindMyLegislators::Legislators

  attr_accessor :name, :party, :home, :district, :url

  def self.legislators
    #scrape whoismyrepresentative and then return legislators based on that data
    self.scrape_legs
  end

  def self.scrape_legs
    legislators = []
    #go to whoismyrepresentative, find the Legislators
    #extract the properties
    #instantiate a rep and senator

    legislators
  end

end
