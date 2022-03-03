class TaskCardsController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  
  def new
    @task_card = TaskCard.new
    @list = List.find(params[:list_id])
  end

  def create
    @list = List.find(params[:list_id])
    @task_card = TaskCard.new(task_card_params)
    if @task_card.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @list = List.find(params[:list_id])
    if @task_card.update(task_card_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @task_card.destroy
    redirect_to root_path
  end

  private
  def task_card_params
    params.require(:task_card).permit(:title, :memo, :list_id)
  end

  def set_task
    @task_card = TaskCard.find(params[:id])
  end
end
