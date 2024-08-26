class AnswersController < ApplicationController
  def answer
    @query = params[:question]

    if @query.nil?
      @answer = "No has hecho ninguna pregunta."
    elsif @query == "I am going to work"
      @answer = "Great!"
    elsif @query.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
