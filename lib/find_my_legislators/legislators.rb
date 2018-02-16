class FindMyLegislators::Legislators

  def self.scrape_whoismyrep(zipcode)
    doc = Nokogiri::HTML(open("https://whoismyrepresentative.com/search/zip/#{zipcode}"))

    doc.css(".member").map.with_index do |member, index|
      note = member.css(".mem_link a").first
      {name: note.text, website: note.attr("href")}
    end

  end
end
