class CatsController < ApplicationController

  def initialize
    @@loaded = 0
  end

  def fortune
    fortunes = ["You will meet someone tall.", "You will meet someone dark.", "You will meet someone handsome."]
    num = rand(3)
    render json: {fortune: fortunes[num]}
  end

  def lotto
    num1 = 1 + rand(60)
    num2 = 1 + rand(60)
    num3 = 1 + rand(60)
    num4 = 1 + rand(60)
    num5 = 1 + rand(60)
    num6 = 1 + rand(60)
    render json: {number_1: num1, number_2: num2, number_3: num3, number_4: num4, number_5: num5, number_6: num6}
  end

  def refresh
    @@loaded += 1
    render json: {times_loaded: @@loaded}
  end

  def beers
    lyrics = ""
    beer = 99

    100.times do
      if beer > 1
        lyrics += "#{beer} bottles of beer on the wall, #{beer} bottles of beer.\nTake one down and pass it around, #{(beer - 1)} bottles of beer on the wall.\n\n"
        beer = beer - 1
      elsif beer == 1
        lyrics += "#{beer} bottle of beer on the wall, #{beer} bottle of beer.\nTake one down and pass it around, no more bottles of beer on the wall.\n\n"
        beer = beer - 1
      else
        lyrics += "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
      end
    end

  render json: {lyrics: lyrics}
  end

end
