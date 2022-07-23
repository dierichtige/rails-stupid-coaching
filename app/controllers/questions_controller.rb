class QuestionsController < ApplicationController
  def ask
    # if params[:question]
    #   redirect_to :controller => 'questions', :action => 'answer'
    # end
  end

  def answer
    @repeatqn = params[:question]
    if @repeatqn.downcase == "i am going to work"
      @response = "Great!"
    elsif @repeatqn.downcase.include?("?")
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
    return @response
  end
end
