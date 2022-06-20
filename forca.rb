require_relative "play.rb"

class Forca < Play

  def initialize(word)

    @word = word
    @keyword = @word.split("")
    @failure = 0
    forca_correct_layout
   
  end

  def forca_correct_layout
    @correct_word = []

    @word.size.times do 
     @correct_word << "_"
    end

  end

  def game_over?

    if @failure == @word.size
      unsuccessfully_message_end
      return true
    elsif  @keyword == @correct_word 
      successfully_message_end
      return true
    end

  end

  def failure_message
    puts "Você cometeu um erro. (#{@failure} de #{@word.size})"
    puts @correct_word.join(" ")
  end

  def success_message
    puts @correct_word.join(" ")
  end

  def unsuccessfully_message_end
    puts "Você perdeu!"
  end

  def successfully_message_end
    puts "Você ganhou!"
  end

  def letter_success?(leter_entry)
    success =  false

    @keyword.each_with_index do |each_leter, index|
       
      if leter_entry == each_leter
       @correct_word[index] = each_leter
        success = true
      end

    end

    success
  end 

end

jogador = Forca.new("cartola")
jogador.play













