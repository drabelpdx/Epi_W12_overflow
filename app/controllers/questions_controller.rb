class QuestionsController < ApplicationController

  def show
    @user = User.find(params[:user_id])
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @user = current_user
    @question = current_user.questions.new(question_params)
    if @question.save
      flash[:notice] = "Your question has been posted."
      redirect_to '/'
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @question = Question.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @question = Question.find(params[:id])
    if @question.update(question_params)
      flash[:notice] = "Your question has been updated."
      redirect_to user_question_path(@user, @question)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @question = Question.find(params[:id])
    @question.destroy
    flash[:notice] = "Your question has been deleted."
    redirect_to '/'
  end


  private

  def question_params
    params.require(:question).permit(:question, :body)
  end

end
