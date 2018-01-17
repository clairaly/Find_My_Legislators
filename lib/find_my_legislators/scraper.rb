class FindMyLegislators::Scraper

    def self.scrape_legislator_page(zipcode)
    	legislator_html = Nokogiri::HTML(open("https://whoismyrepresentative.com/home/" + zip_code ))
    end

 end
