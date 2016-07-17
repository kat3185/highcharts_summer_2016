class CreateWinningWordLength < ActiveRecord::Migration[5.0]
  def change
    create_table :winning_word_lengths do |t|
      t.integer :length
      t.integer :year

      t.timestamps
    end
  end
end
