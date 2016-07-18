class FormatData
  def self.asTable(winning_word_length, venomous_spider_deaths)
    year = winning_word_length.map { |word| word.year }
    word_length = winning_word_length.map{ |word| word.length }
    spider_deaths = venomous_spider_deaths.map{ |year| year.death_count }
    [year, word_length, spider_deaths].transpose
  end
  def self.asHash(winning_word_length, venemous_spider_deaths)
    year = winning_word_length.map { |word| word.year }
    word_length = winning_word_length.map{ |word| word.length }
    spider_deaths = venomous_spider_deaths.map{ |year| year.death_count }
    {year: year, wordLength: word_length, spiderDeaths: spider_deaths}
  end
end
