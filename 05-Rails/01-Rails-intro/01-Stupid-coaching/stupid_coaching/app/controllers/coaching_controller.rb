class CoachingController < ApplicationController

  def ask

  end

  def answer
    @query = params[:query]

    if @query == "I am going to work right now SIR !"
      @answer = ""
    elsif @query.include? "?"
      @answer = "Silly question, get dressed and go to work !"
    else
      @answer = "I don't care son, get dressed and go to work !"
    end


  end


end

