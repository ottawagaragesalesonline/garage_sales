# app/controller/supports_controller.rb
class AskquestionsController < ApplicationController
  def new
    # id is required to deal with form
    @ask_question = ask_question.new(:id => 1)
  end

  def create
    @ask_question = ask_question.new(params[:support])
    if @ask_question.save
      redirect_to('/', :notice => "Support was successfully sent.")
    else
      flash[:alert] = "You must fill all fields."
      render 'new'
    end
  end
end