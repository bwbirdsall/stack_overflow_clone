class QuestionsController < ApplicationController
  def index
    @questions = Question.all

  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Your question was added to The Heap!"
      redirect_to questions_path
    else
      render 'new'
    end
  end

  def show
    @answer = Answer.new
    @question = Question.find(params[:id])
    @best_answer = Answer.find_by(:is_best => true)
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path, :notice => 'Question Deleted'
  end

  private
  def question_params
    params.require(:question).permit(:content, :header, :user_id, :is_answered)
  end
end
