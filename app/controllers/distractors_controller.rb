class DistractorsController < ApplicationController
  before_action :set_question

  def index
    @distractors = @question.distractors
    render json: @distractors
  end

  def show
    @distractor = @question.distractors.find(params[:id])
    render json: @distractor
  end

  def create
    @distractor = @question.distractors.build(distractor_params)
    if @distractor.save
      render json: @distractor, status: :created
    else
      render json: @distractor.errors, status: :unprocessable_entity
    end
  end

  def update
    @distractor = @question.distractors.find(params[:id])
    if @distractor.update(distractor_params)
      head :no_content
    else
      render json: @distractor.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @distractor = @question.distractors.find(params[:id])
    @distractor.destroy
    head :no_content
  end


  private

  def set_question
    @question = Question.find(params[:question_id])
  end

  def distractor_params
    params.permit(:distractor)
  end
end
