class RPGDiceSimulator
  AVALIABLE_DICES = [4, 6, 8, 10, 12, 20, 100]
  def initialize
    @dice_count = 0
    @dice_sides = 0
  end

  def start
    puts "Welcome to RPG Dice Simulator!"
    choose_dice
    roll_dice
  end

  private

  def choose_dice
    puts "How many dice do you want to roll?"
    @dice_count = gets.chomp.to_i

    puts "Choose the dice sides: #{AVALIABLE_DICES.join(', ')}"
    input = gets.chomp.upcase
    @dice_sides = input.gsub('D', '').to_i

    unless AVALIABLE_DICES.include?(@dice_sides)
      puts "Invalid dice sides. Please choose one of the following: #{AVALIABLE_DICES.join(', ')}"
      choose_dice
    end
  end

  def roll_dice
    puts "Rolling #{@dice_count} dice(s) with #{@dice_sides} sides..."
    results = Array.new(@dice_count) { rand(1..@dice_sides) }
    puts "Results: #{results.join(', ')}"
  end
end

#Start the Simulator

RPGDiceSimulator.new.start