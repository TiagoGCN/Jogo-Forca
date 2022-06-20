class Play

  def play

    puts @correct_word.join(" ")

    loop do 

      puts "Digite uma letra:"
      leter_entry = gets.chomp

      if letter_success?(leter_entry)
        success_message
      else 
        @failure += 1
        failure_message
      end
      
      if game_over?
        break
      end

    end

  end

end