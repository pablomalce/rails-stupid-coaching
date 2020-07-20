class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]
      if params[:question].include?("?")
        @answer = "Silly question, get dressed and go to work!"
        return @answer
      elsif params[:question].eql?("I am going to    work right now!")
        @answer = ""
        return  @paramsn
      else
        return @answer = "I don't care, get dressed and go to work!"
        return @answer
      end
    end
end 