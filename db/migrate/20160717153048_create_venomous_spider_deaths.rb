class CreateVenomousSpiderDeaths < ActiveRecord::Migration[5.0]
  def change
    create_table :venomous_spider_deaths do |t|
      t.integer :death_count
      t.integer :year

      t.timestamps
    end
  end
end
