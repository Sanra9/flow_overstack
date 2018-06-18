class AnswersController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    @question.answers.create(answer_params)
    redirect_to question_path(@question)
  end

  def destroy
    question = Question.find(params[:question_id])
    question.answers.destroy
    redirect_to root_path
  end



  private
    def answer_params
      params.require(:answer).permit(:content)
    end
end
