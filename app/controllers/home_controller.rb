class HomeController < ApplicationController
  
  def index
    result = params[:answer]
    
    if result
      @message = "The answer is #{result}. Would you like to add another?"
    else
      @message = "Hello world! I can add numbers if you'd like..."
    end
  end
  
  def form_submit
    result = params[:a].to_i + params[:b].to_i + params[:c].to_i
    
    redirect_to "/?answer=#{result}"
  end
  
end
