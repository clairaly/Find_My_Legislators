class FindMyLegislators::Legislators

  attr_accessor :name, :party, :home, :district, :url

  def self
    puts <<-DOC.gsub /^\s*/, ''
      1. Rep. First_Name Last_Name, political party, district number
      2. Senator First_Name Last_Name, political party, district number
    DOC

    leg_1.self.new
    leg_1.name = "Rep. Tim Walberg"
    leg_1.party = "Republican"
    leg_1.home = "Tipton, MI"
    leg_1.district = "7"
    leg_1.url = "https://whoismyrepresentative.com/member/view/W000798/"

    leg_2.self.new
    leg_2.name = "Senator Stabenow"
    leg_2.party = "Democrat"
    leg_2.home = "Lansing, MI"
    leg_2.district = "MI"
    leg_2.url = "https://whoismyrepresentative.com/member/view/S000770/"

    [leg_1, leg_2]
  end

end
