class TaskCardsController < ApplicationController
  def new
    @task_card = TaskCard.new
    @list = List.find(params[:list_id])
  end

  def create
    @task_card = TaskCard.new(task_card_params)
    if @task_card.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def task_card_params
    params.require(:task_card).permit(:title, :memo, :list_id)
  end
end
