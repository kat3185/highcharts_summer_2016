class WinningWordLengthsController < ApplicationController
  def index
    winning_word_length = WinningWordLength.all
    venomous_spider_deaths = VenomousSpiderDeath.all
    year = winning_word_length.map { |winning_word| winning_word.year }
    word_length = winning_word_length.map{ |winning_word| winning_word.length }
    spider_deaths = venomous_spider_deaths.map{ |year| year.death_count }
    @data = [year, word_length, spider_deaths].transpose
    
    json_data = {year: year, wordLength: word_length, spiderDeaths: spider_deaths}
    respond_to do |format|
      format.html
      format.json { render json: json_data}
    end
  end
end
