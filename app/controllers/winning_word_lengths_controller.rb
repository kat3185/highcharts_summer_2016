class WinningWordLengthsController < ApplicationController
  def index

    winning_word_length = WinningWordLength.all
    venomous_spider_deaths = VenomousSpiderDeath.all
    year = winning_word_length.map { |word| word.year }
    word_length = winning_word_length.map{ |word| word.length }
    spider_deaths = venomous_spider_deaths.map{ |year| year.death_count }

    @data = [year, word_length, spider_deaths].transpose
    respond_to do |format|
      format.html
      format.json do
        render json: {year: year, wordLength: word_length, spiderDeaths: spider_deaths}
      end
    end
  end
end
