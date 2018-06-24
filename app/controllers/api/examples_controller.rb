class Api::ExamplesController < ApplicationController
  def fortune_action
    @fortunes = ["You will have a good day.", "You will have a bad day.", "The same dog will pee on you twice today.", "You should probably eat more protein today."]
    @random_fortune = @fortunes[rand(@fortunes.length)]
    @lotto_numbers = []
    @lotto_number_message = "Your lucky numbers are: "
    while @lotto_numbers.length < 6 do
      new_entry = 1 + rand(60)
      unless @lotto_numbers.include? new_entry
        @lotto_numbers << new_entry
      end
    end
    @lotto_numbers = @lotto_numbers.sort
    i = 0
    6.times do
      @lotto_number_message << "#{@lotto_numbers[i]}"
      if i < 5
        @lotto_number_message << ", "
      else
        @lotto_number_message << "."
      end
      i += 1
    end
    @random_fortune << " #{@lotto_number_message}"
    render json: @random_fortune
  end

  def image_action
    
  end
end
