class Scraping
  def self.car_urls
    links = []
    agent = Mechanize.new
    next_url = ""

    while true
      current_page = agent.get("http://www.carsensor.net/usedcar" + next_url)
      elements = current_page.search('.carListWrap .caset js_listTableCassette .casetMedia__body__title a')
      elements.each do |ele|
        links << ele[:href]
      end
      next_link = current_page.at('.pager__btn__next').attributes["onclick"].value
      next_link.slice!(0..22)
      next_link.slice!(-15..-1)
      break unless next_url
    end
    links.each do |link|
      get_product('http://www.carsensor.net/usedcar' + next_url)
    end
  end

  def self.get_product(link)
    agent = Mechanize.new
    page = agent.get(link)
    title = page.at('.container h2').inner_text if page.at('.container h2')
    cars = Cars.where(title: title).first_or_initialize
    car.save
  end
end




#test

# class Test_scraping
#   def self.car_urls
#     agent = Mechanize.new
#     next_url = ""

#     while true
#       current_page = agent.get("http://www.carsensor.net/usedcar" + next_url)

#       next_link = current_page.at('.pager__btn button.btnFunc pager__btn__next')
#       next_url = next_link.get_attribute('onclick')
#       binding.pry
      # next_url = next_link.slice(0..22)
      # next_url = next_link.slice!(-15..-1)
      # break unless next_url
#     end
#   end
# end