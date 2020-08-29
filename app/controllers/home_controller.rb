class HomeController < ApplicationController
  def index
  
@sym=params[:ticker]

    if @sym == ""
      @nothing = "Hey! You Forgot to enter a symbol!?!"
    elsif @sym != nil
      begin
        @api = StockQuote::Stock.new(api_key:'pk_efbaa5b122c44e1b9bb71680e9d0562b')
      @stock = StockQuote::Stock.quote(@sym)
      
      rescue => exception
        @error= "we have problems!! " + exception.message
      end
      
    end
  end
  def about
  end
end
