class CalculationsController < ApplicationController
  
  def loan_payment_form


  end	

  def loan_payment

    @apr = params["apr"].to_f
    @years = params["years"].to_i
    @principal = params["principal"].to_f
    @months = @years*12
    @E_rate = @apr/1200


    @monthly_payment = @principal*(@E_rate+(@E_rate / (((1 + @E_rate)**(@months))-1)))

    render

  end

  def word_count
    @text = params["text"]
    @special_word = params["word"]

	@special_word = @special_word.downcase

    @character_count_with_spaces = @text.length

    @character_count_without_spaces = @text.gsub(" ","").length

    @word_count = @text.split.count

    @occurrences = @text.downcase.split.count(@special_word)
end


end
